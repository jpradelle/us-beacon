#include "SerialMessage.h"

SerialMessage::SerialMessage(HardwareSerial* serial) {
	_serial = serial;
	_bufferPos = 0;
}

void SerialMessage::received(char chr) {
	// to be extended
}

void SerialMessage::shiftBuffer() {
	if (_bufferPos > 0) {
		for (unsigned short pos = 0; pos < _bufferPos; pos++) {
			_buffer[pos] = _buffer[pos + 1];
		}
		_bufferPos--;
	}
}

bool SerialMessage::available() {
	while (_serial->available() > 0) {
		char read = _serial->read();
		_buffer[_bufferPos++] = read;
		received(read);
		
		if (_bufferPos > SERIAL_MESSAGE_HEADER_SIZE) {
			bool flush = false;
			
			if (_buffer[0] == START_CHAR_1 && _buffer[1] == START_CHAR_2) {
				unsigned short len = _buffer[2];
				
				if (len <= MESSAGE_LIMIT_SIZE + 1) { // id + message
					if (_bufferPos >= SERIAL_MESSAGE_HEADER_SIZE + len) {
						// parse message
						_message = Message(_buffer[3], &(_buffer[4]), len - 1);
						
						unsigned short crc = 0;
						((char*)&crc)[0] = _buffer[2 + len + 1];
						((char*)&crc)[1] = _buffer[2 + len + 2];
						
						if (_buffer[2 + len + 3] == END_CHAR) {
							if (_message.isValidCrc(crc)) {
								// everything's ok, clear buffer
								_bufferPos = 0;
								return true;
							} else { 
							return true;
								// invalid crc
								flush = true;
							}
						} else {
							// invalid end char
							flush = true;
						}
					}
				} else {
					// len too large, not possible
					flush = true;
				}
			} else {
				// bad start flags
				flush = true;
			}
			
			if (flush) {
				do {
					shiftBuffer();
				} while (_bufferPos > 0 && _buffer[0] != START_CHAR_1);
			}
		}
	}
	
	return false;
}

Message* SerialMessage::getMessage() {
	// return copy of local temp
	return new Message(_message.getId(), _message.getBytes(), _message.getSize());
}

void SerialMessage::sendMessage(Message* msg) {
	uint8_t buff[SERIAL_MESSAGE_BUFFER_SIZE];
	buff[0] = START_CHAR_1;
	buff[1] = START_CHAR_2;
	buff[2] = msg->getSize() + 1;
	buff[3] = msg->getId();
	
	char* msgBytes = msg->getBytes();
	for (int i = 0; i < msg->getSize(); i++) {
		buff[4 + i] = msgBytes[i];
	}
	
	unsigned short crc = msg->computeCrc();
	buff[4 + msg->getSize()] = (char) crc;
	buff[4 + msg->getSize() + 1] = ((char*) &crc)[1];
	buff[4 + msg->getSize() + 2] = END_CHAR;
	
//	_serial->write((uint8_t *) buff, 4 + msg->getSize() + 3);
	_serial->write(buff, 4 + msg->getSize() + 3);
//	_serial->print(buff);
	
}
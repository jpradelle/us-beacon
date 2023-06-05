#include "Message.h"
#include <string.h>
#include <iostream>

Message::Message() {
	_id = -1;
	_size = 0;
	_readPos = 0;
}

Message::Message(char id) {
	_id = id;
	_size = 0;
	_readPos = 0;
}

Message::Message(char id, char* bytes, short size) {
	_id = id;
	memcpy(_bytes, bytes, size);
	_size = size;
	_readPos = 0;
}

unsigned short Message::computeCrc(char* bytes, short size) {
	char x;
	unsigned short crc = 0xFFFF;
	
	while (size--) {
		x = crc >> 8 ^ *bytes++;
		x ^= x >> 4;
		crc = (crc << 8) ^ ((unsigned short) (x << 12)) ^ ((unsigned short) (x << 5)) ^ ((unsigned short) x);
	}
	
	return crc;
}

unsigned short Message::computeCrc() {
	// prepend id to bytes
	char bytesWithId[MESSAGE_LIMIT_SIZE + 1];
	bytesWithId[0] = _id;
	memcpy(&(bytesWithId[1]), _bytes, _size);
	
	return computeCrc(bytesWithId, _size + 1);
}

char Message::getId() {
	return _id;
}

char* Message::getBytes() {
	return _bytes;
}

short Message::getSize() {
	return _size;
}

char Message::getNextChar() {
	return _bytes[_readPos++];
}

bool Message::isValidCrc(unsigned short crc) {
	unsigned short dataCrc = computeCrc();
	
	return crc == dataCrc;
}

void Message::packChar(const char data) {
	if (_size < 8)
		_bytes[_size++] = data;
}

void Message::packUInt8(const int data) {
	if (0 <= data && data < 255)
		packChar((char) data);
}

void Message::packShort(const int data) {
	if (-32768 < data && data < 32767) {
		packChar((char) data);
		packChar(((char*) &data)[1]);
	}
}

void Message::packInt(const int data) {
	packChar((char) data);
	packChar(((char*) &data)[1]);
	packChar(((char*) &data)[2]);
	packChar(((char*) &data)[3]);
}

void Message::packFloat(const float data) {
	packChar((char) data);
	packChar(((char*) &data)[1]);
	packChar(((char*) &data)[2]);
	packChar(((char*) &data)[3]);
}

char Message::readChar() {
	if (_readPos < MESSAGE_LIMIT_SIZE)
		return getNextChar();
	else
		std::cerr << "CAN: try to read " << _readPos+1 << "th byte where the frame contains " << MESSAGE_LIMIT_SIZE << " bytes" << std::endl;
}

int Message::readUInt8() {
	if (_readPos < MESSAGE_LIMIT_SIZE) {
		int i = 0;
		((char*)&i)[0] = getNextChar();
		return i;
	} else
		std::cerr << "CAN: try to read " << _readPos+1 << "th byte where the frame contains " << MESSAGE_LIMIT_SIZE << " bytes" << std::endl;
}

short Message::readShort() {
	short s = 0;
	((char*)&s)[0] = readChar();
	((char*)&s)[1] = readChar();
	
	return s;
}

float Message::readFloat() {
	float f = 0;
	((char*)&f)[0] = readChar();
	((char*)&f)[1] = readChar();
	((char*)&f)[2] = readChar();
	((char*)&f)[3] = readChar();
	
	return f;
}

int Message::readInt() {
	int i = 0;
	((char*)&i)[0] = readChar();
	((char*)&i)[1] = readChar();
	((char*)&i)[2] = readChar();
	((char*)&i)[3] = readChar();
	
	return i;
}
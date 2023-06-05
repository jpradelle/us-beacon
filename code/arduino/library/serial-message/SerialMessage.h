/*
  SerialMessage.h - Library for message management in serial link
  Message is formatted like that : START_CHAR[2] LEN[1] ID[1] DATA[0-8] CRC[2] END[1]
  CRC is made on ID + DATA
*/
#ifndef SERIAL_MESSAGE_H
#define SERIAL_MESSAGE_H

#include "HardwareSerial.h"
#include "Message.h"

#define START_CHAR_1 '#'
#define START_CHAR_2 '$'
#define END_CHAR '\n'

#define SERIAL_MESSAGE_HEADER_SIZE 2 + 1 + 2 + 1
#define SERIAL_MESSAGE_BUFFER_SIZE SERIAL_MESSAGE_HEADER_SIZE + 1 + MESSAGE_LIMIT_SIZE

class SerialMessage {
	public:
		SerialMessage(HardwareSerial* serial);
		
		/**
		 * Hook to extend when received message
		 */
		virtual void received(char chr);
		
		/**
		 * Test if a message is available
		 */
		bool available();
		
		/**
		 * Get last available message. Method available() build the message and must be called before.
		 */
		Message* getMessage();
		
		void sendMessage(Message* msg);
		
	private:
		HardwareSerial* _serial;
		char _buffer[SERIAL_MESSAGE_BUFFER_SIZE];
		unsigned short _bufferPos;
		Message _message;
		
		void shiftBuffer();
};

#endif
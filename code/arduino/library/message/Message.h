/*
  Message.h - Library for message management
*/
#ifndef MESSAGE_H
#define MESSAGE_H

#define MESSAGE_LIMIT_SIZE 8

class Message {
	public:
		Message();
		Message(char id);
		Message(char id, char* bytes, short size);
		unsigned short computeCrc();
		static unsigned short computeCrc(char* bytes, short size);
		char getId();
		char* getBytes();
		short getSize();
		bool isValidCrc(unsigned short crc);
		char getNextChar();

		void packChar(const char data);
		void packUInt8(const int data);
		void packShort(const int data);
		void packInt(const int data);
		void packFloat(const float data);
		
		char readChar();
		int readUInt8();
		short readShort();
		float readFloat();
		int readInt();
		
	private:
		char _id;
		char _bytes[MESSAGE_LIMIT_SIZE];
		short _size;
		short _readPos;
};

#endif
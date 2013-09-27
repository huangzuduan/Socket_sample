/*
 * SocketException.h
 *
 *  Created on: 2012-9-28
 *      Author: root
 */

#ifndef SOCKETEXCEPTION_H_
#define SOCKETEXCEPTION_H_

class SocketException {
public:
	SocketException(std::string description) :
			msg(description) {
	}
	;
	~SocketException() {
	}
	;
	std::string DisplayMsg() {
		return msg;
	}
private:
	std::string msg;
};

#endif /* SOCKETEXCEPTION_H_ */

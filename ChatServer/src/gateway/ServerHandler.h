/*
 * ServerHandler.h
 *
 *  Created on: 2012-10-19
 *      Author: root
 */

#ifndef SERVERHANDLER_H_
#define SERVERHANDLER_H_
#include "Encoder.h"

namespace gateway{
class ServerHandler {
public:
	ServerHandler();
	virtual ~ServerHandler();
	static void initClassHandlerMap();
	static void doAction(const std::string message);

};

}

#endif /* SERVERHANDLER_H_ */

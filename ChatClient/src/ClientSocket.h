/*
 * ClientSocket.h
 *
 *  Created on: 2012-9-29
 *      Author: root
 */

#ifndef CLIENTSOCKET_H_
#define CLIENTSOCKET_H_

#include "Socket.h"

class ClientSocket :public Socket{
public:
	ClientSocket(const std::string& host,const int port);
	virtual ~ClientSocket();

	bool Send(const std::string& message)  ; // don't add const after,becase child will chage socket
	int Recevie(std::string& message) ;

};

#endif /* CLIENTSOCKET_H_ */

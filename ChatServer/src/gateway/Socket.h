/*
 * Socket.h
 *
 *  Created on: 2012-9-28
 *      Author: root
 */

#ifndef SOCKET_H_
#define SOCKET_H_

#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string>

const int CONNECTION_MAX = 500;
const int RECEIVE_BUF_MAX = 4096;

namespace gateway{
class Socket {
public:
	Socket();
	virtual ~Socket();

	// Server initialization
	bool Create();// create a socket
	bool Bind(const int port);
	bool Listen() const;
	bool Accept(Socket& clientSocket) const;

	// Client initialization
	bool Connet(const std::string& host,const int port);

	// Data Transmissioin
	static bool Send(Socket& socket,const std::string message) ;
	static int Recevie(Socket& socket,std::string& message);

	void SetNonBlocking(const bool flag);
	bool IsValied() const;
	int GetAddress() const;
	int GetPost() const;

private :

	// use m_sockfd to record the result of function socket
	int m_sockfd;
	struct sockaddr_in m_address;

};
}
#endif /* SOCKET_H_ */

/*
 * ServerSocket.h
 *
 *  Created on: 2012-9-28
 *      Author: root
 */

#ifndef SERVERSOCKET_H_
#define SERVERSOCKET_H_
#include "Socket.h"
#include <list>
#include <semaphore.h>
#include "ThreadReadWriteLock.h"

const int RECV_WAIT_TIME = 100;
const int CONNECT_DIFFER_TIME = 100;

using std::list;
namespace gateway{
class ServerSocket : public Socket{
public:
	ServerSocket(const int port);
	virtual ~ServerSocket();
	bool Accept();
	// run server to connect multi-clients
	void Run();
	void Accept(Socket& socket);
	void AddClient(Socket* clientSocket);
	static void* ProcessMessage(void* arg);
private :
	// accetp multi-clients

	static void DeleteClient(Socket* clientSocket);
//	static void* ProcessMessage(void* arg);
	static void SendMsgToAllUsers(const std::string& message);

	static list<Socket*> clientSockets;
	static bool serviceFlag;
	// use thread-read-write-lock to synchronize threads
	static ThreadReadWriteLock readWriteLock;

};
}
#endif /* SERVERSOCKET_H_ */

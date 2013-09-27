/*
 * ServerSocket.cpp
 *
 *  Created on: 2012-9-28
 *      Author: root
 */

#include "ServerSocket.h"
#include "../base/Exception.h"
#include <pthread.h>
#include <iostream>
#include "Encoder.h"
#include "ServerHandler.h"


namespace gateway{

using namespace std;
using namespace base;

/**
 * static vars must init at here
 */
list<Socket*> ServerSocket::clientSockets;
ThreadReadWriteLock ServerSocket::readWriteLock;
bool ServerSocket::serviceFlag = true;

ServerSocket::ServerSocket(const int port) {

	if (!Socket::Create()) {
		throw Exception("Could not create server socket.");
	}

	if (!Socket::Bind(port)) {
		throw Exception("Could not bind to port.");
	}

	if (!Socket::Listen()) {
		throw Exception("Could not Listen to socket.");
	}
}

void ServerSocket::Accept(Socket& socket) {

	if (!Socket::Accept(socket)) {
		throw Exception("Could not accpet socket.");
	}

}

bool ServerSocket::Accept() {

	Socket* clientSocket = new Socket;
	/**
	 * why has a '*' on the clientSocket before
	 * because add a '*' is the pointer has a value that &
	 */
	Accept(*clientSocket);
	AddClient(clientSocket);
	// create a new thread for a new client
	pthread_t newThread;
	int result=pthread_create(&newThread, NULL, ProcessMessage,static_cast<void*>(clientSocket));
	return result == 0;

}

void* ServerSocket::ProcessMessage(void* arg) {
	std::cout << "thread..." << std::endl;
	std::string message;
	Socket* clientSocket = static_cast<Socket*>(arg);
	while (serviceFlag) {
		Socket::Recevie(*clientSocket, message);
		std::cout << "Recv from Client["<< clientSocket->GetAddress() << ":" << clientSocket->GetPost()<<"]:" << message << std::endl;
		ServerHandler::doAction(message);
		message.clear();
		usleep(RECV_WAIT_TIME);
	}

	pthread_exit(NULL);

	return NULL;
}

void ServerSocket::AddClient(Socket* clientSocket) {

	if (readWriteLock.SetReadLock()) {
		clientSockets.push_back(clientSocket);
		std::cout << "How " << clientSockets.size() << " users" << std::endl;
		std::cout << "New User " << std::endl;
		readWriteLock.UnLock();
	} else {
		serviceFlag = false;
	}

}

void ServerSocket::Run() {

	while (serviceFlag) {
		if (clientSockets.size() >= static_cast<unsigned int>(CONNECTION_MAX)) {
			serviceFlag = false;
		} else {
			serviceFlag = Accept();
		}
		usleep(CONNECT_DIFFER_TIME);
	}

}

void ServerSocket::DeleteClient(Socket* socketClient) {

	if (readWriteLock.SetWriteLock()) {
		list<Socket*>::iterator iter;
		for (iter = clientSockets.begin(); iter != clientSockets.end();
				iter++) {
			if ((*iter)->GetAddress() == socketClient->GetAddress()
					&& (*iter)->GetPost() == socketClient->GetPost()) {
				// delete this client socket
				delete (*iter);
				clientSockets.erase(iter);
				std::cout << "Now " << clientSockets.size() << " users;\n" << std::endl;
				break;
			}
		}

	}else{
		serviceFlag=false;
	}

}

ServerSocket::~ServerSocket() {
	// TODO Auto-generated destructor stub
}
}

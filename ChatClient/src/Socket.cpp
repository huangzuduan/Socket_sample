/*
 * Socket.cpp
 *
 *  Created on: 2012-9-28
 *      Author: root
 */

#include "Socket.h"
#include <memory.h>
#include <iostream>
#include <fcntl.h>
Socket::Socket() :
		m_sockfd(-1) {

}

Socket::~Socket() {
	if (IsValied()) {
		::close(m_sockfd);
	}
}

/**
 * server function
 */
bool Socket::Create() {
	m_sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (!IsValied()) {
		return false;
	} else {
		return true;
	}

}

/**
 * bind function
 */
bool Socket::Bind(const int port) {

	m_address.sin_family = AF_INET;
	m_address.sin_addr.s_addr = htonl(INADDR_ANY );
	m_address.sin_port = htons(port);

	int bindReturn = bind(m_sockfd, (struct sockaddr *) &m_address,
			sizeof(m_address));
	return bindReturn != -1;
}

/**
 *  listen function
 */
bool Socket::Listen() const {

	if (!IsValied()) {
		return false;
	}
	int listenReturn = listen(m_sockfd, CONNECTION_MAX);
	return listenReturn != -1;

}

/**
 * Accept function
 */
bool Socket::Accept(Socket& clientSocket) const {

	int clientaddrLength = sizeof(clientSocket.m_address);
	clientSocket.m_sockfd = ::accept(m_sockfd,
			(struct sockaddr*) &clientSocket.m_address,
			(socklen_t *) &clientaddrLength);
	return clientSocket.m_sockfd != -1;
}

/**
 * Connet function
 */
bool Socket::Connet(const std::string& host, int port) {

	if (!IsValied()) {
		return false;
	}
	m_address.sin_family = AF_INET;
	m_address.sin_port = htons(port);
	m_address.sin_addr.s_addr = inet_addr(host.c_str());
	int connectReturn = ::connect(m_sockfd, (struct sockaddr *) &m_address,
			sizeof(m_address));
	return connectReturn != -1;

}

/**
 * Send function
 */
bool Socket::Send(Socket& socket,const std::string message) const {
	int sendReturn = ::send(socket.m_sockfd,message.c_str(),message.length(),MSG_NOSIGNAL);
	return sendReturn!=-1;
}

/**
 * Recevie function
 */
int Socket::Recevie(Socket& socket,std::string& message) const {

	char buffer[RECEIVE_BUF_MAX+1];
	message.clear();
	memset(buffer,0,RECEIVE_BUF_MAX+1);
	int recvReturn = ::recv(socket.m_sockfd,buffer,RECEIVE_BUF_MAX,0);
	if(recvReturn==-1){
		std::cout << "error in Socket::Receive\n" << std::endl;
	}else if(recvReturn > 0){
		message = buffer;
	}
	return 0;

}

/**
 * Set NonBlocking function
 */
void Socket::SetNonBlocking(const bool flag){

	if(IsValied()){
		int opts = fcntl(m_sockfd,F_GETFL);
		if(opts < 0){ // error
			return ;
		}
		if(flag){
			opts = (opts | O_NONBLOCK);
		}else{
			opts = (opts | ~O_NONBLOCK);
		}
	}

}

/**
 * isvalid function
 */
bool Socket::IsValied() const {
	return m_sockfd != -1;
}


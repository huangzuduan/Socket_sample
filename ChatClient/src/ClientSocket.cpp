/*
 * ClientSocket.cpp
 *
 *  Created on: 2012-9-29
 *      Author: root
 */

#include "ClientSocket.h"
#include "SocketException.h"

ClientSocket::ClientSocket(const std::string& host, const int port) {

	if (!Socket::Create()) {
		throw SocketException("Could not create client socket.");
	}

	if (!Socket::Connet(host, port)) {
		throw SocketException("Could not connect to port.");
	}

}

/**
 * Send function
 */
bool ClientSocket::Send(const std::string& message) {

	return Socket::Send(static_cast<Socket&>(*this), message);

}

/**
 * Recevie function
 */
int ClientSocket::Recevie(std::string& message) {

	return Socket::Recevie(static_cast<Socket&>(*this),message);
}

ClientSocket::~ClientSocket() {
// TODO Auto-generated destructor stub
}


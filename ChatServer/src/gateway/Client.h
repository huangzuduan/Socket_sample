/*
 * Client.h
 *
 *  Created on: 2012-10-15
 *      Author: root
 */

#ifndef CLIENT_H_
#define CLIENT_H_
#include "Socket.h"
namespace gateway{
class Client {
public:
	Client(Socket* sock);
	virtual ~Client();
//
private:
   	Socket _sock;
};
}
#endif /* CLIENT_H_ */

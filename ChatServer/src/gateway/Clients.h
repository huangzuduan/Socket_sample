/*
 * Clients.h
 *
 *  Created on: 2012-10-15
 *      Author: root
 */

#ifndef CLIENTS_H_
#define CLIENTS_H_
#include <string>
#include "Client.h"
#include <map>

struct ClientData
{
	int n;
};
namespace gateway{
class Clients : std::map<int,Client*> {
public:
	Clients();
	virtual ~Clients();
	void addClient(Socket* sock);
	void put(int uid,Client* client);
	Client* get(int uid);

	static Clients getInstance();

	ClientData& GetData()
	{
		return mData;
	}

private :
	static Clients _instance;
	ClientData mData;
};
}
#endif /* CLIENTS_H_ */

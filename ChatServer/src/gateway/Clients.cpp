/*
 * Clients.cpp
 *
 *  Created on: 2012-10-15
 *      Author: root
 */

#include "Clients.h"
#include <map>
namespace gateway{
// static var must init here
Clients Clients::_instance;
Clients::Clients() {

}

Clients Clients::getInstance() {
	return _instance;
}

void Clients::addClient(Socket* sock) {



}

void Clients::put(int uid, Client* client) {
	_instance.insert(std::pair<int, Client*>(uid, client));

}

Client* Clients::get(int uid) {

	std::map<int, Client*>::iterator iter = _instance.find(uid);
	if (iter != _instance.end()) {
		return iter->second;
	} else {
		return 0;
	}

}

Clients::~Clients() {
	// TODO Auto-generated destructor stub
}
}

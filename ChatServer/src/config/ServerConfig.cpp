/*
 * ServerConfig.cpp
 *
 *  Created on: 2012-10-25
 *      Author: root
 */

#include "ServerConfig.h"
#include "../util/Config.h"

namespace config {

map<string,string> ServerConfig::_map;

ServerConfig::ServerConfig() {
	// TODO Auto-generated constructor stub

}

ServerConfig::~ServerConfig() {
	// TODO Auto-generated destructor stub
}

void ServerConfig::Init(const std::string filename) {

	Config::ReadConfig(filename, _map);

}

string ServerConfig::GetServerIp() {

	return _map["ServerIp"];

}

int ServerConfig::GetServerPort(){

	return StringFormat::Str2Int(_map["ServerPort"]);

}

string ServerConfig::GetDatabaseIp(){

	return _map["DatabaseIp"];

}

int ServerConfig::GetDatabasePort(){

	return StringFormat::Str2Int(_map["DatabasePort"]);

}

string ServerConfig::GetDatabaseUser(){

	return _map["Database_User"];
}

string ServerConfig::GetDatabasePass(){

	return _map["Database_Pass"];

}

string ServerConfig::GetDatabaseConfig(){

	return _map["Database_config"];

}

string ServerConfig::GetDatabaseData(){

	return _map["Database_config"];

}

string ServerConfig::GetDatabaseLog(){

	return _map["Database_config"];

}

} /* namespace config */

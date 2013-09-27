/*
 * ServerConfig.h
 *
 *  Created on: 2012-10-25
 *      Author: root
 */

#ifndef SERVERCONFIG_H_
#define SERVERCONFIG_H_

#include <map>
#include <string>
#include "../util/StringFormat.h"

using namespace std;
using namespace util;

namespace config {

class ServerConfig {
public:

	ServerConfig();
	virtual ~ServerConfig();

	static void Init(const std::string filename);

	static string GetServerIp();

	static int GetServerPort();

	static string GetDatabaseIp();

	static int GetDatabasePort();

	static string GetDatabaseUser();

	static string GetDatabasePass();

	static string GetDatabaseConfig();

	static string GetDatabaseData();

	static string GetDatabaseLog();


private :

	static map<string,string> _map;

};

} /* namespace config */
#endif /* SERVERCONFIG_H_ */

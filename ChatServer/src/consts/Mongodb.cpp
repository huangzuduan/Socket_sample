/*
 * Mongodb.cpp
 *
 *  Created on: 2012-10-26
 *      Author: root
 */

#include "Mongodb.h"

namespace consts {

DBClientConnection Mongodb::conn;

Mongodb::Mongodb() {

	// TODO Auto-generated constructor stub

}

Mongodb::~Mongodb() {
	// TODO Auto-generated destructor stub
}

void Mongodb::Init() {

	string errmsg;

	// 连接
	if (!conn.connect(
			ServerConfig::GetDatabaseIp() + ":"
					+ StringFormat::Int2Str(ServerConfig::GetDatabasePort()),
			errmsg)) {
		throw Exception(errmsg);
	}

	// 验证
	if (!conn.auth(ServerConfig::GetDatabaseConfig(),
			ServerConfig::GetDatabaseUser(), ServerConfig::GetDatabasePass(),
			errmsg)) {
		throw Exception(errmsg);
	}

	if (!conn.auth(ServerConfig::GetDatabaseData(),
			ServerConfig::GetDatabaseUser(), ServerConfig::GetDatabasePass(),
			errmsg)) {
		throw Exception(errmsg);
	}

	if (!conn.auth(ServerConfig::GetDatabaseLog(),
			ServerConfig::GetDatabaseUser(), ServerConfig::GetDatabasePass(),
			errmsg)) {
		throw Exception(errmsg);
	}

}

} /* namespace consts */

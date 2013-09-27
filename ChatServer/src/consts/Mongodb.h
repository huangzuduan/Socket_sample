/*
 * Mongodb.h
 *
 *  Created on: 2012-10-26
 *      Author: root
 */

#ifndef MONGODB_H_
#define MONGODB_H_
#include "mongo/client/dbclient.h"
#include "../base/Exception.h"
#include "../config/ServerConfig.h"
#include "../util/StringFormat.h"


namespace consts {

using namespace std;
using namespace mongo;
using namespace config;
using namespace util;
using namespace base;

class Mongodb {
public:
	Mongodb();
	virtual ~Mongodb();

	static DBClientConnection conn;

	static void Init();

};

} /* namespace consts */
#endif /* MONGODB_H_ */

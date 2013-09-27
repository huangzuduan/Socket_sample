/*
 * Ttt.cpp
 *
 *  Created on: 2012-10-25
 *      Author: root
 */

#include "Ttt.h"
#include "mongo/client/dbclient.h"
using namespace mongo;


Ttt::Ttt() {
	// TODO Auto-generated constructor stub
	const char *port = "27017";
	    DBClientConnection conn;
	    string errmsg;
	    if ( conn.connect( string( "127.0.0.1:" ) + port , errmsg ) ) {
	        cout << "couldn't connect : " << errmsg << endl;
	        throw -11;
	    }

	    {
	        // clean up old data from any previous tests
	        conn.remove( "test.system.users" , BSONObj() );
	    }

	    conn.insert( "test.system.users" , BSON( "user" << "eliot" << "pwd" << conn.createPasswordDigest( "eliot" , "bar" ) ) );

	    errmsg.clear();
	    bool ok = conn.auth( "test" , "eliot" , "bar" , errmsg );
	    if ( ! ok )
	        cout << errmsg << endl;
}

Ttt::~Ttt() {
	// TODO Auto-generated destructor stub
}



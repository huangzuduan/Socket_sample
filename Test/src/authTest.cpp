// authTest.cpp

/*    Copyright 2009 10gen Inc.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

#include <iostream>

#include "mongo/client/dbclient.h"
#ifndef assert
#  define assert(x) MONGO_assert(x)
#endif
using namespace mongo;

int main() {

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

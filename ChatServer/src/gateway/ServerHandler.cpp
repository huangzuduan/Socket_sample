/*
 * ServerHandler.cpp
 *
 *  Created on: 2012-10-19
 *      Author: root
 */

#include "ServerHandler.h"
#include "Encoder.h"
#include "Decoder.h"
#include <string>
#include "../util/JSONObject.h"

#include "ClassHandler.h"
#include "Foo.h"
#include "../controller/Test.h"
#include "../util/StringFormat.h"

// init class obj
template<typename T>
Test *Create()                  //创建函数
{
	return new T;
}
typedef Test*(*FUN)();
map<string, FUN> classHandlerMap;      //由类名到创建函数的映射
namespace gateway {
using namespace std;
using namespace util;
ServerHandler::ServerHandler() {
	// TODO Auto-generated constructor stub

}

ServerHandler::~ServerHandler() {
	// TODO Auto-generated destructor stub
}

void ServerHandler::initClassHandlerMap() {
	classHandlerMap["Test"] = Create<Test>;
//	Test* f= classHandlerMap["Test"]();
//	f->Login();
}

void ServerHandler::doAction(const std::string message) {
	std::string data = Decoder::decoder(message);
	std::cout << "data:" << data << std::endl;
	if ("" == data) {
		return;
	}

	JSONObject request = JSONObject(data);
	string action = request.getString("action");
	if ("" == action) {
		return;
	}
	std::vector<std::string> v = StringFormat::split(action, ".");
	if (v.size() != 2) {
		return;
	}

	std::cout << "action:" << action << std::endl;
	std::cout << "class:" << v[0] << std::endl;
	std::cout << "method:" << v[1] << std::endl;

	Test* test = classHandlerMap[v[0]]();
	test->Login();


	std::cout << "use method success!" << std::endl;

}
}


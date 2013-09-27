//============================================================================
// Name        : ChatSocket.cpp
// Author      : Huang
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <string>
#include "ServerSocket.h"
#include "../base/Exception.h"
#include "Clients.h"
#include "../util/JSONObject.h"

#include "ServerHandler.h"
#include "../util/StringFormat.h"
#include "../config/ServerConfig.h"
#include "mongo/client/dbclient.h"

#include "../util/Config.h"
#include "../consts/Mongodb.h"

#ifndef assert
#define assert(x) MMONGO_assert(x)
#endif

using namespace gateway;
using namespace std;
using namespace util;
using namespace config;
using namespace mongo;
using namespace base;
using namespace consts;

// 初始化配置
void InitConfig();

// 初始化Action
void InitAction();

// 连接数据库
void InitMongoDB();

// 启动定时器
void TimerStart();

// 启动队列
void QueueStart();

// 启动Http服务
void HttpStart();

// 启动Socket服务
void ServerStart();

int main(int argc, char* argv[]) {

	try{
		//运行需要的参数，参数为配置文件位置]
		for (int i = 0; i < argc; i++) {
			// 暂时不做处理
		}

		InitConfig();

		InitAction();

		InitMongoDB();

		TimerStart();

		QueueStart();

		HttpStart();

		ServerStart();

	}catch(Exception e){

		cout << e.DisplayMsg() << endl;

	}

	cout << "Server is end!" << endl;

	return 0;

}

void InitConfig() {

	ServerConfig::Init("configs/server.cfg");

	cout << "InitConfig success......ok!" << endl;

}

void InitAction() {

	ServerHandler::initClassHandlerMap();
	cout << "InitAction success......ok!" << endl;

}

void InitMongoDB() {

	Mongodb::Init();
	cout << "ConnectDB success......ok!" << endl;

}

void ServerStart() {

	cout << "ServerStart Running......ok!" << endl;

	ServerSocket server(ServerConfig::GetServerPort());

	server.Accept();

}

void TimerStart() {

	cout << "TimerStart success......ok!" << endl;

}

void QueueStart() {

	cout << "QueueStart success......ok!" << endl;

}

void HttpStart() {

}


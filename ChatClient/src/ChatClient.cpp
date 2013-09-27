/*
 * ChatClient.cpp
 *
 *  Created on: 2012-9-29
 *      Author: root
 */

#include "ClientSocket.h"
#include "SocketException.h"
#include <string>
#include <iostream>
#include "Encoder.h"
#include "Decoder.h"
using namespace std;

int main() {

	cout << "====Running Client...====" << endl;
	try{
		std::string strValue = "{\"action\":\"Test\"}";
		ClientSocket clientSocket("127.0.0.1",8800);
//		string massage=Encoder::encoder(strValue);
//		cout << Decoder::decoder(massage) << endl;
		while(1){
//			clientSocket.Recevie(massage);
//			cout << "Response from server:" << massage << endl;
//			massage.clear();
			clientSocket.Send(Encoder::encoder(strValue));

			sleep(5);
		}

	}catch (SocketException& e) {
		cout << "Exception was caught:" << e.DisplayMsg() << endl;
	}

	return 0;
}


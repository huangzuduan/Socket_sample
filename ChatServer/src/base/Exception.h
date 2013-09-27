/*
 * Exception.h
 *
 *  Created on: 2012-10-20
 *      Author: root
 */

#ifndef EXCEPTION_H_
#define EXCEPTION_H_
#include <iostream>
#include <stdlib.h>
#include <stdio.h>

namespace base {

class Exception {
public:

	Exception(std::string description) :
			msg(description) {
	}
	;
	~Exception() {
	}
	;
	std::string DisplayMsg() {

		std::string h = "┌───────────────────────┐";
		std::string e = "   Exception Info    ";
		std::string r = "├───────────────────────┤";
		std::string i = "├" + msg + "┤";
		std::string l = "└───────────────────────┘";

		int leng = h.length();
		int msgleng = msg.length();

		std::string msgstr = msg;
		int spaceleng= (leng-2 - msgleng) / 4 ;
		if(spaceleng>0){
			for(int ii=0;ii<spaceleng;ii++){
				msgstr = " "+msgstr;
			}
			for(int ii=0;ii<spaceleng;ii++){
				msgstr = msgstr+" ";
			}
		}

		std::cout << h << std::endl;
		std::cout << e << std::endl;
		std::cout << r << std::endl;
		std::cout << msgstr << std::endl;
		std::cout << l << std::endl;

		return msg;
	}
private:
	std::string msg;
};

} /* namespace util */
#endif /* EXCEPTION_H_ */

/*
 * TypeConvert.cpp
 *
 *  Created on: 2012-10-18
 *      Author: root
 */

#include "TypeConvert.h"
#include <string.h>
#include <sstream>
#include <stdlib.h>

namespace util{
TypeConvert::TypeConvert() {
	// TODO Auto-generated constructor stub

}

TypeConvert::~TypeConvert() {
	// TODO Auto-generated destructor stub
}

int TypeConvert::Strint2Int(const std::string s){
	return atoi(s.c_str());
}

std::string TypeConvert::Int2String(const int i){

	std::ostringstream oss;
	oss << i;
	return oss.str();

}
}

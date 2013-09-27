/*
 * Encoder.cpp
 *
 *  Created on: 2012-10-18
 *      Author: root
 */

#include "Encoder.h"
#include "../util/TypeConvert.h"
#include <iostream>

namespace gateway {
using namespace util;
Encoder::Encoder() {
	// TODO Auto-generated constructor stub

}

Encoder::~Encoder() {
	// TODO Auto-generated destructor stub
}

std::string Encoder::encoder(std::string message) {

	int length = message.length();
	std::string lenstr = TypeConvert::Int2String(length);
	if (length < 10) {
		lenstr = "000" + lenstr;
	} else if (length < 100) {
		lenstr = "00" + lenstr;
	} else if (length < 1000) {
		lenstr = "0" + lenstr;
	}

	return (lenstr + message);
}
}

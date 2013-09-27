/*
 * Decoder.cpp
 *
 *  Created on: 2012-10-18
 *      Author: root
 */

#include "Decoder.h"
#include "../util/TypeConvert.h"
namespace gateway {
using namespace util;
Decoder::Decoder() {

}

Decoder::~Decoder() {
}

std::string Decoder::decoder(std::string message) {

	int length = message.length();
	if (length <= 4) {
		return ""; // waite
	}

	std::string datalengstr = message.substr(0, 4);
	int dataleng = TypeConvert::Strint2Int(datalengstr);
	if (dataleng > length - 4) {
		return "";
	}

	return message.substr(4, length - 4);
}

}

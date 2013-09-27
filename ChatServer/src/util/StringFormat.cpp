/*
 * StringFormat.cpp
 *
 *  Created on: 2012-10-22
 *      Author: root
 */

#include "StringFormat.h"

namespace util {

StringFormat::StringFormat() {
	// TODO Auto-generated constructor stub

}

StringFormat::~StringFormat() {
	// TODO Auto-generated destructor stub
}

int StringFormat::Str2Int(const std::string s){
	return atoi(s.c_str());
}

std::string StringFormat::Int2Str(int i){

	std::ostringstream oss;
	oss << i;
	return oss.str();

}

std::vector<std::string> StringFormat::split(std::string str,
		std::string pattern) {

	std::string::size_type pos;
	std::vector<std::string> result;
	str += pattern;

	int size = str.size();
	for (int i = 0; i < size; i++) {
		pos = str.find(pattern, i);
		if (pos < size) {
			std::string s = str.substr(i, pos - i);
			result.push_back(s);
			i = pos + pattern.size() - 1;
		}
	}

	return result;

}

} /* namespace util */

/*
 * StringFormat.h
 *
 *  Created on: 2012-10-22
 *      Author: root
 */

#ifndef STRINGFORMAT_H_
#define STRINGFORMAT_H_
#include <iostream>
#include <string>
#include <vector>
#include <string.h>
#include <sstream>
#include <stdlib.h>

namespace util {

class StringFormat {
public:
	StringFormat();
	virtual ~StringFormat();

	static int Str2Int(const std::string s);

	static std::string Int2Str(const int i);

	static std::vector<std::string> split(std::string str,std::string pattern);
};

} /* namespace util */
#endif /* STRINGFORMAT_H_ */

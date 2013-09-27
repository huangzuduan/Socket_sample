/*
 * TypeConvert.h
 *
 *  Created on: 2012-10-18
 *      Author: root
 */

#ifndef TYPECONVERT_H_
#define TYPECONVERT_H_
#include <string>
namespace util {
class TypeConvert {
public:

	TypeConvert();
	virtual ~TypeConvert();

	static int Strint2Int(const std::string s);
	static std::string Int2String(const int i);

};
}
#endif /* TYPECONVERT_H_ */

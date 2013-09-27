/*
 * JSONObject.cpp
 *
 *  Created on: 2012-10-20
 *      Author: root
 */

#include "JSONObject.h"
#include "../base/Exception.h"

namespace util {
using namespace base;

JSONObject::JSONObject(std::string jsondata) {

	if (!_reader.parse(jsondata, _value)) {
		throw Exception("jsondata format is error!");
	}
}

JSONObject::~JSONObject() {
	// TODO Auto-generated destructor stub
}

std::string JSONObject::getString(std::string key){
	return _value[key].asString();
}

int JSONObject::getInt(std::string key){
	if(_value[key].isInt() || _value[key].isDouble()){
		return _value[key].asInt();
	}
	return 0;
}

double JSONObject::getDouble(std::string key){
	if(_value[key].isInt() || _value[key].isDouble()){
			return _value[key].asDouble();
		}
		return 0.0;
}

bool JSONObject::getBool(std::string key){
	if(_value[key].isBool()){
		return _value[key].asBool();
	}
	return false;
}

} /* namespace util */

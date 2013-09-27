/*
 * JSONObject.h
 *
 *  Created on: 2012-10-20
 *      Author: root
 */

#ifndef JSONOBJECT_H_
#define JSONOBJECT_H_
#include <json/json.h>
namespace util {

class JSONObject {
public:
	JSONObject(std::string jsondata);
	virtual ~JSONObject();

	int getInt(std::string key);
	double getDouble(std::string key);
	bool getBool(std::string key);
	std::string getString(std::string key);

private:
	Json::Reader _reader;
	Json::Value _value;


};

} /* namespace util */
#endif /* JSONOBJECT_H_ */

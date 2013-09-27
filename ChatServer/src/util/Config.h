/*
 * Config.h
 *
 *  Created on: 2012-10-24
 *      Author: root
 */
/****************************************************************************
*   作者:  jasitzhang(张涛)
*   日期:  2011-10-2
*   目的:  读取配置文件的信息，以map的形式存入
*   要求:  配置文件的格式，以#作为行注释，配置的形式是key = value，中间可有空格，也可没有空格
*****************************************************************************/
#ifndef CONFIG_H_
#define CONFIG_H_
#define COMMENT_CHAR '#'

#include <string>
#include <map>

using namespace std;

namespace util {

class Config {
public:

	Config();

	virtual ~Config();

	static bool ReadConfig(const string& filename,map<string,string>& m);

	static void PrintConfig(const map<string,string>& m);

	static bool IsSpace(char c);

	static bool IsCommentChar(char c);

	static void Trim(string& str);

	static bool AnalyseLine(const string& line,string& key,string& value);

};

} /* namespace util */
#endif /* CONFIG_H_ */

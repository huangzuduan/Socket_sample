/*
 * Encoder.h
 *
 *  Created on: 2012-10-18
 *      Author: root
 */

#ifndef ENCODER_H_
#define ENCODER_H_
#include <string>
namespace gateway{
class Encoder {
public:
	Encoder();
	virtual ~Encoder();

	static std::string encoder(std::string message);
};
}
#endif /* ENCODER_H_ */

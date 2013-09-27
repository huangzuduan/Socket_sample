/*
 * Decoder.h
 *
 *  Created on: 2012-10-18
 *      Author: root
 */

#ifndef DECODER_H_
#define DECODER_H_
#include <string>
namespace gateway{
class Decoder {
public:
	Decoder();
	virtual ~Decoder();

	static std::string decoder(std::string message);
};
}
#endif /* DECODER_H_ */

/*
 * Foo.h
 *
 *  Created on: 2012-10-22
 *      Author: root
 */

#ifndef FOO_H_
#define FOO_H_
#include "ClassHandler.h"
#include <iostream>


class Foo : public ClassHandler{
public:
	Foo();
	virtual ~Foo();
	void test();
};

#endif /* FOO_H_ */

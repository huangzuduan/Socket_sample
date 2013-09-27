/*
 * ThreadReadWriteLock.h
 *
 *  Created on: 2012-10-17
 *      Author: root
 */

#ifndef THREADREADWRITELOCK_H_
#define THREADREADWRITELOCK_H_
#include <pthread.h>
namespace gateway{
class ThreadReadWriteLock {
public:
	ThreadReadWriteLock();
	virtual ~ThreadReadWriteLock();

	bool SetReadLock();
	bool SetWriteLock();
	void UnLock();

private:
	pthread_rwlock_t readWriteLock;
};
}
#endif /* THREADREADWRITELOCK_H_ */

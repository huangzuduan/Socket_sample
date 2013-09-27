/*
 * ThreadReadWriteLock.cpp
 *
 *  Created on: 2012-10-17
 *      Author: root
 */

#include "ThreadReadWriteLock.h"
namespace gateway{
ThreadReadWriteLock::ThreadReadWriteLock() {
//	readWriteLock = PTHREAD_RWLOCK_INITIALIZER;
	if(pthread_rwlock_init(&readWriteLock,NULL)!=0){
		throw ;
	}
}

ThreadReadWriteLock::~ThreadReadWriteLock() {
	pthread_rwlock_destroy(&readWriteLock);
}

bool ThreadReadWriteLock::SetReadLock() {
	return pthread_rwlock_rdlock(&readWriteLock) == 0;
}

bool ThreadReadWriteLock::SetWriteLock() {
	return pthread_rwlock_wrlock(&readWriteLock) == 0;
}

void ThreadReadWriteLock::UnLock() {
	if(pthread_rwlock_unlock(&readWriteLock)!=0){
		throw ;
	}
}
}

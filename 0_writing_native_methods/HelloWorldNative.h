//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: HelloWorldNative.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_HelloWorldNative")
#ifdef RESTRICT_HelloWorldNative
#define INCLUDE_ALL_HelloWorldNative 0
#else
#define INCLUDE_ALL_HelloWorldNative 1
#endif
#undef RESTRICT_HelloWorldNative

#if !defined (HelloWorldNative_) && (INCLUDE_ALL_HelloWorldNative || defined(INCLUDE_HelloWorldNative))
#define HelloWorldNative_

@class IOSObjectArray;

@interface HelloWorldNative : NSObject

#pragma mark Public

- (instancetype)init;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(HelloWorldNative)

FOUNDATION_EXPORT void HelloWorldNative_init(HelloWorldNative *self);

FOUNDATION_EXPORT HelloWorldNative *new_HelloWorldNative_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT HelloWorldNative *create_HelloWorldNative_init(void);

FOUNDATION_EXPORT void HelloWorldNative_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(HelloWorldNative)

#endif

#pragma pop_macro("INCLUDE_ALL_HelloWorldNative")

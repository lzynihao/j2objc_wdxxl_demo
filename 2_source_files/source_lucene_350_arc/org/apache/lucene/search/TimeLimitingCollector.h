//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/TimeLimitingCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchTimeLimitingCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTimeLimitingCollector

#if !defined (OrgApacheLuceneSearchTimeLimitingCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector || defined(INCLUDE_OrgApacheLuceneSearchTimeLimitingCollector))
#define OrgApacheLuceneSearchTimeLimitingCollector_

#define RESTRICT_OrgApacheLuceneSearchCollector 1
#define INCLUDE_OrgApacheLuceneSearchCollector 1
#include "org/apache/lucene/search/Collector.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneSearchTimeLimitingCollector_TimerThread;
@class OrgApacheLuceneUtilCounter;

@interface OrgApacheLuceneSearchTimeLimitingCollector : OrgApacheLuceneSearchCollector

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector
                        withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)clock
                                              withLong:(jlong)ticksAllowed;

- (jboolean)acceptsDocsOutOfOrder;

- (void)collectWithInt:(jint)doc;

+ (OrgApacheLuceneUtilCounter *)getGlobalCounter;

+ (OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *)getGlobalTimerThread;

- (jboolean)isGreedy;

- (void)setBaseline;

- (void)setBaselineWithLong:(jlong)clockTime;

- (void)setGreedyWithBoolean:(jboolean)greedy;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTimeLimitingCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(OrgApacheLuceneSearchTimeLimitingCollector *self, OrgApacheLuceneSearchCollector *collector, OrgApacheLuceneUtilCounter *clock, jlong ticksAllowed);

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector *new_OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(OrgApacheLuceneSearchCollector *collector, OrgApacheLuceneUtilCounter *clock, jlong ticksAllowed) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector *create_OrgApacheLuceneSearchTimeLimitingCollector_initWithOrgApacheLuceneSearchCollector_withOrgApacheLuceneUtilCounter_withLong_(OrgApacheLuceneSearchCollector *collector, OrgApacheLuceneUtilCounter *clock, jlong ticksAllowed);

FOUNDATION_EXPORT OrgApacheLuceneUtilCounter *OrgApacheLuceneSearchTimeLimitingCollector_getGlobalCounter();

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *OrgApacheLuceneSearchTimeLimitingCollector_getGlobalTimerThread();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTimeLimitingCollector)

#endif

#if !defined (OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_) && (INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector || defined(INCLUDE_OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException))
#define OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@interface OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException : JavaLangRuntimeException

#pragma mark Public

- (jint)getLastDocCollected;

- (jlong)getTimeAllowed;

- (jlong)getTimeElapsed;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTimeLimitingCollector_TimeExceededException)

#endif

#if !defined (OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_) && (INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector || defined(INCLUDE_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread))
#define OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_

#define RESTRICT_JavaLangThread 1
#define INCLUDE_JavaLangThread 1
#include "java/lang/Thread.h"

@class OrgApacheLuceneUtilCounter;

@interface OrgApacheLuceneSearchTimeLimitingCollector_TimerThread : JavaLangThread {
 @public
  OrgApacheLuceneUtilCounter *counter_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)counter;

- (instancetype)initWithLong:(jlong)resolution
withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)counter;

- (jlong)getMilliseconds;

- (jlong)getResolution;

- (void)run;

- (void)setResolutionWithLong:(jlong)resolution;

- (void)stopTimer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, counter_, OrgApacheLuceneUtilCounter *)

inline NSString *OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_get_THREAD_NAME();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_THREAD_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, THREAD_NAME, NSString *)

inline jint OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_get_DEFAULT_RESOLUTION();
#define OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_DEFAULT_RESOLUTION 20
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread, DEFAULT_RESOLUTION, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *self, jlong resolution, OrgApacheLuceneUtilCounter *counter);

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(jlong resolution, OrgApacheLuceneUtilCounter *counter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *create_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithLong_withOrgApacheLuceneUtilCounter_(jlong resolution, OrgApacheLuceneUtilCounter *counter);

FOUNDATION_EXPORT void OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *self, OrgApacheLuceneUtilCounter *counter);

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *new_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *counter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTimeLimitingCollector_TimerThread *create_OrgApacheLuceneSearchTimeLimitingCollector_TimerThread_initWithOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilCounter *counter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTimeLimitingCollector_TimerThread)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTimeLimitingCollector")

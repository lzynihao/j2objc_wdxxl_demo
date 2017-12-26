//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SearcherLifetimeManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager")
#ifdef RESTRICT_OrgApacheLuceneSearchSearcherLifetimeManager
#define INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSearcherLifetimeManager
#ifdef INCLUDE_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge
#define INCLUDE_OrgApacheLuceneSearchSearcherLifetimeManager_Pruner 1
#endif

#if !defined (OrgApacheLuceneSearchSearcherLifetimeManager_) && (INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager || defined(INCLUDE_OrgApacheLuceneSearchSearcherLifetimeManager))
#define OrgApacheLuceneSearchSearcherLifetimeManager_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneSearchIndexSearcher;
@protocol OrgApacheLuceneSearchSearcherLifetimeManager_Pruner;

@interface OrgApacheLuceneSearchSearcherLifetimeManager : NSObject < JavaIoCloseable >

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchIndexSearcher *)acquireWithLong:(jlong)version_;

- (void)close;

- (void)pruneWithOrgApacheLuceneSearchSearcherLifetimeManager_Pruner:(id<OrgApacheLuceneSearchSearcherLifetimeManager_Pruner>)pruner;

- (jlong)recordWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (void)release__WithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)s;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherLifetimeManager)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSearcherLifetimeManager_init(OrgApacheLuceneSearchSearcherLifetimeManager *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherLifetimeManager *new_OrgApacheLuceneSearchSearcherLifetimeManager_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherLifetimeManager *create_OrgApacheLuceneSearchSearcherLifetimeManager_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherLifetimeManager)

#endif

#if !defined (OrgApacheLuceneSearchSearcherLifetimeManager_Pruner_) && (INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager || defined(INCLUDE_OrgApacheLuceneSearchSearcherLifetimeManager_Pruner))
#define OrgApacheLuceneSearchSearcherLifetimeManager_Pruner_

@class OrgApacheLuceneSearchIndexSearcher;

@protocol OrgApacheLuceneSearchSearcherLifetimeManager_Pruner < JavaObject >

- (jboolean)doPruneWithInt:(jint)ageSec
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherLifetimeManager_Pruner)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherLifetimeManager_Pruner)

#endif

#if !defined (OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_) && (INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager || defined(INCLUDE_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge))
#define OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_

@class OrgApacheLuceneSearchIndexSearcher;

@interface OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge : NSObject < OrgApacheLuceneSearchSearcherLifetimeManager_Pruner >

#pragma mark Public

- (instancetype)initWithInt:(jint)maxAgeSec;

- (jboolean)doPruneWithInt:(jint)ageSec
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *self, jint maxAgeSec);

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *new_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(jint maxAgeSec) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge *create_OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge_initWithInt_(jint maxAgeSec);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherLifetimeManager_PruneByAge)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSearcherLifetimeManager")

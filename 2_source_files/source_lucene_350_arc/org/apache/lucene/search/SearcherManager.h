//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SearcherManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSearcherManager")
#ifdef RESTRICT_OrgApacheLuceneSearchSearcherManager
#define INCLUDE_ALL_OrgApacheLuceneSearchSearcherManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSearcherManager 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSearcherManager

#if !defined (OrgApacheLuceneSearchSearcherManager_) && (INCLUDE_ALL_OrgApacheLuceneSearchSearcherManager || defined(INCLUDE_OrgApacheLuceneSearchSearcherManager))
#define OrgApacheLuceneSearchSearcherManager_

@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilConcurrentExecutorService;
@protocol OrgApacheLuceneSearchSearcherWarmer;

@interface OrgApacheLuceneSearchSearcherManager : NSObject

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
              withOrgApacheLuceneSearchSearcherWarmer:(id<OrgApacheLuceneSearchSearcherWarmer>)warmer
                withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)es;

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                            withBoolean:(jboolean)applyAllDeletes
                withOrgApacheLuceneSearchSearcherWarmer:(id<OrgApacheLuceneSearchSearcherWarmer>)warmer
                  withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)es;

- (OrgApacheLuceneSearchIndexSearcher *)acquire;

- (void)close;

- (jboolean)isSearcherCurrent;

- (jboolean)maybeReopen;

- (void)release__WithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherManager)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es);

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneStoreDirectory *dir, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es);

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneStoreDirectory *dir, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneStoreDirectory *dir, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSearcherManager)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSearcherManager")

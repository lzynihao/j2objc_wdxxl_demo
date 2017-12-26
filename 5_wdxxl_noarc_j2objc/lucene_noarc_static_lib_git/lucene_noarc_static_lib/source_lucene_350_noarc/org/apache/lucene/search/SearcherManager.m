//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SearcherManager.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/ExecutorService.h"
#include "java/util/concurrent/Semaphore.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/SearcherManager.h"
#include "org/apache/lucene/search/SearcherWarmer.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/Directory.h"

@interface OrgApacheLuceneSearchSearcherManager () {
 @public
  volatile_id currentSearcher_;
  id<JavaUtilConcurrentExecutorService> es_;
  id<OrgApacheLuceneSearchSearcherWarmer> warmer_;
  JavaUtilConcurrentSemaphore *reopenLock_;
}

- (void)ensureOpen;

- (void)swapSearcherWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)newSearcher;

@end

J2OBJC_VOLATILE_FIELD_SETTER(OrgApacheLuceneSearchSearcherManager, currentSearcher_, OrgApacheLuceneSearchIndexSearcher *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherManager, es_, id<JavaUtilConcurrentExecutorService>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherManager, warmer_, id<OrgApacheLuceneSearchSearcherWarmer>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSearcherManager, reopenLock_, JavaUtilConcurrentSemaphore *)

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherManager_ensureOpen(OrgApacheLuceneSearchSearcherManager *self);

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherManager_swapSearcherWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneSearchIndexSearcher *newSearcher);

@interface OrgApacheLuceneSearchSearcherManager_1 : OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer {
 @public
  id<OrgApacheLuceneSearchSearcherWarmer> val$warmer_;
  id<JavaUtilConcurrentExecutorService> val$es_;
}

- (instancetype)initWithOrgApacheLuceneSearchSearcherWarmer:(id<OrgApacheLuceneSearchSearcherWarmer>)capture$0
                      withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)capture$1;

- (void)warmWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSearcherManager_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchSearcherManager_1 *self, id<OrgApacheLuceneSearchSearcherWarmer> capture$0, id<JavaUtilConcurrentExecutorService> capture$1);

__attribute__((unused)) static OrgApacheLuceneSearchSearcherManager_1 *new_OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(id<OrgApacheLuceneSearchSearcherWarmer> capture$0, id<JavaUtilConcurrentExecutorService> capture$1) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSearcherManager_1 *create_OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(id<OrgApacheLuceneSearchSearcherWarmer> capture$0, id<JavaUtilConcurrentExecutorService> capture$1);

@implementation OrgApacheLuceneSearchSearcherManager

- (instancetype)initWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                            withBoolean:(jboolean)applyAllDeletes
                withOrgApacheLuceneSearchSearcherWarmer:(id<OrgApacheLuceneSearchSearcherWarmer>)warmer
                  withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)es {
  OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(self, writer, applyAllDeletes, warmer, es);
  return self;
}

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
              withOrgApacheLuceneSearchSearcherWarmer:(id<OrgApacheLuceneSearchSearcherWarmer>)warmer
                withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)es {
  OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(self, dir, warmer, es);
  return self;
}

- (jboolean)maybeReopen {
  OrgApacheLuceneSearchSearcherManager_ensureOpen(self);
  if ([((JavaUtilConcurrentSemaphore *) nil_chk(reopenLock_)) tryAcquire]) {
    @try {
      OrgApacheLuceneIndexIndexReader *newReader = OrgApacheLuceneIndexIndexReader_openIfChangedWithOrgApacheLuceneIndexIndexReader_([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(JreLoadVolatileId(&currentSearcher_))) getIndexReader]);
      if (newReader != nil) {
        OrgApacheLuceneSearchIndexSearcher *newSearcher = create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(newReader, es_);
        jboolean success = false;
        @try {
          if (warmer_ != nil) {
            [warmer_ warmWithOrgApacheLuceneSearchIndexSearcher:newSearcher];
          }
          OrgApacheLuceneSearchSearcherManager_swapSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, newSearcher);
          success = true;
        }
        @finally {
          if (!success) {
            [self release__WithOrgApacheLuceneSearchIndexSearcher:newSearcher];
          }
        }
      }
      return true;
    }
    @finally {
      [reopenLock_ release__];
    }
  }
  else {
    return false;
  }
}

- (jboolean)isSearcherCurrent {
  OrgApacheLuceneSearchIndexSearcher *searcher = [self acquire];
  @try {
    return [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) isCurrent];
  }
  @finally {
    [self release__WithOrgApacheLuceneSearchIndexSearcher:searcher];
  }
}

- (void)release__WithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  JreAssert(searcher != nil, @"org/apache/lucene/search/SearcherManager.java:209 condition failed: assert searcher != null;");
  [((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) decRef];
}

- (void)close {
  @synchronized(self) {
    if (JreLoadVolatileId(&currentSearcher_) != nil) {
      OrgApacheLuceneSearchSearcherManager_swapSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, nil);
    }
  }
}

- (OrgApacheLuceneSearchIndexSearcher *)acquire {
  OrgApacheLuceneSearchIndexSearcher *searcher;
  do {
    if ((searcher = JreLoadVolatileId(&currentSearcher_)) == nil) {
      @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this SearcherManager is closed");
    }
  }
  while (![((OrgApacheLuceneIndexIndexReader *) nil_chk([((OrgApacheLuceneSearchIndexSearcher *) nil_chk(searcher)) getIndexReader])) tryIncRef]);
  return searcher;
}

- (void)ensureOpen {
  OrgApacheLuceneSearchSearcherManager_ensureOpen(self);
}

- (void)swapSearcherWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)newSearcher {
  OrgApacheLuceneSearchSearcherManager_swapSearcherWithOrgApacheLuceneSearchIndexSearcher_(self, newSearcher);
}

- (void)__javaClone:(OrgApacheLuceneSearchSearcherManager *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&currentSearcher_, &original->currentSearcher_);
}

- (void)dealloc {
  JreReleaseVolatile(&currentSearcher_);
  RELEASE_(es_);
  RELEASE_(warmer_);
  RELEASE_(reopenLock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchIndexSearcher;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x22, 6, 5, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexWriter:withBoolean:withOrgApacheLuceneSearchSearcherWarmer:withJavaUtilConcurrentExecutorService:);
  methods[1].selector = @selector(initWithOrgApacheLuceneStoreDirectory:withOrgApacheLuceneSearchSearcherWarmer:withJavaUtilConcurrentExecutorService:);
  methods[2].selector = @selector(maybeReopen);
  methods[3].selector = @selector(isSearcherCurrent);
  methods[4].selector = @selector(release__WithOrgApacheLuceneSearchIndexSearcher:);
  methods[5].selector = @selector(close);
  methods[6].selector = @selector(acquire);
  methods[7].selector = @selector(ensureOpen);
  methods[8].selector = @selector(swapSearcherWithOrgApacheLuceneSearchIndexSearcher:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "currentSearcher_", "LOrgApacheLuceneSearchIndexSearcher;", .constantValue.asLong = 0, 0x42, -1, -1, -1, -1 },
    { "es_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "warmer_", "LOrgApacheLuceneSearchSearcherWarmer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "reopenLock_", "LJavaUtilConcurrentSemaphore;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexWriter;ZLOrgApacheLuceneSearchSearcherWarmer;LJavaUtilConcurrentExecutorService;", "LJavaIoIOException;", "LOrgApacheLuceneStoreDirectory;LOrgApacheLuceneSearchSearcherWarmer;LJavaUtilConcurrentExecutorService;", "LOrgApacheLuceneIndexCorruptIndexException;LJavaIoIOException;", "release", "LOrgApacheLuceneSearchIndexSearcher;", "swapSearcher" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherManager = { "SearcherManager", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x11, 9, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSearcherManager;
}

@end

void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->reopenLock_, new_JavaUtilConcurrentSemaphore_initWithInt_(1));
  JreStrongAssign(&self->es_, es);
  JreStrongAssign(&self->warmer_, warmer);
  JreVolatileStrongAssign(&self->currentSearcher_, create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader_openWithOrgApacheLuceneIndexIndexWriter_withBoolean_(writer, applyAllDeletes)));
  if (warmer != nil) {
    [((OrgApacheLuceneIndexIndexWriterConfig *) nil_chk([((OrgApacheLuceneIndexIndexWriter *) nil_chk(writer)) getConfig])) setMergedSegmentWarmerWithOrgApacheLuceneIndexIndexWriter_IndexReaderWarmer:create_OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(warmer, es)];
  }
}

OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_, writer, applyAllDeletes, warmer, es)
}

OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexWriter *writer, jboolean applyAllDeletes, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneIndexIndexWriter_withBoolean_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_, writer, applyAllDeletes, warmer, es)
}

void OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneStoreDirectory *dir, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->reopenLock_, new_JavaUtilConcurrentSemaphore_initWithInt_(1));
  JreStrongAssign(&self->es_, es);
  JreStrongAssign(&self->warmer_, warmer);
  JreVolatileStrongAssign(&self->currentSearcher_, create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexReader_openWithOrgApacheLuceneStoreDirectory_withBoolean_(dir, true), es));
}

OrgApacheLuceneSearchSearcherManager *new_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneStoreDirectory *dir, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_, dir, warmer, es)
}

OrgApacheLuceneSearchSearcherManager *create_OrgApacheLuceneSearchSearcherManager_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneStoreDirectory *dir, id<OrgApacheLuceneSearchSearcherWarmer> warmer, id<JavaUtilConcurrentExecutorService> es) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherManager, initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_, dir, warmer, es)
}

void OrgApacheLuceneSearchSearcherManager_ensureOpen(OrgApacheLuceneSearchSearcherManager *self) {
  if (JreLoadVolatileId(&self->currentSearcher_) == nil) {
    @throw create_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this SearcherManager is closed");
  }
}

void OrgApacheLuceneSearchSearcherManager_swapSearcherWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchSearcherManager *self, OrgApacheLuceneSearchIndexSearcher *newSearcher) {
  @synchronized(self) {
    OrgApacheLuceneSearchSearcherManager_ensureOpen(self);
    OrgApacheLuceneSearchIndexSearcher *oldSearcher = JreLoadVolatileId(&self->currentSearcher_);
    JreVolatileStrongAssign(&self->currentSearcher_, newSearcher);
    [self release__WithOrgApacheLuceneSearchIndexSearcher:oldSearcher];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSearcherManager)

@implementation OrgApacheLuceneSearchSearcherManager_1

- (instancetype)initWithOrgApacheLuceneSearchSearcherWarmer:(id<OrgApacheLuceneSearchSearcherWarmer>)capture$0
                      withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)capture$1 {
  OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(self, capture$0, capture$1);
  return self;
}

- (void)warmWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  [((id<OrgApacheLuceneSearchSearcherWarmer>) nil_chk(val$warmer_)) warmWithOrgApacheLuceneSearchIndexSearcher:create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(reader, val$es_)];
}

- (void)dealloc {
  RELEASE_(val$warmer_);
  RELEASE_(val$es_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSearcherWarmer:withJavaUtilConcurrentExecutorService:);
  methods[1].selector = @selector(warmWithOrgApacheLuceneIndexIndexReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$warmer_", "LOrgApacheLuceneSearchSearcherWarmer;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$es_", "LJavaUtilConcurrentExecutorService;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "warm", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSearcherManager;", "initWithOrgApacheLuceneIndexIndexWriter:withBoolean:withOrgApacheLuceneSearchSearcherWarmer:withJavaUtilConcurrentExecutorService:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSearcherManager_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 2, 2, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneSearchSearcherManager_1;
}

@end

void OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchSearcherManager_1 *self, id<OrgApacheLuceneSearchSearcherWarmer> capture$0, id<JavaUtilConcurrentExecutorService> capture$1) {
  JreStrongAssign(&self->val$warmer_, capture$0);
  JreStrongAssign(&self->val$es_, capture$1);
  OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer_init(self);
}

OrgApacheLuceneSearchSearcherManager_1 *new_OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(id<OrgApacheLuceneSearchSearcherWarmer> capture$0, id<JavaUtilConcurrentExecutorService> capture$1) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSearcherManager_1, initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_, capture$0, capture$1)
}

OrgApacheLuceneSearchSearcherManager_1 *create_OrgApacheLuceneSearchSearcherManager_1_initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_(id<OrgApacheLuceneSearchSearcherWarmer> capture$0, id<JavaUtilConcurrentExecutorService> capture$1) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSearcherManager_1, initWithOrgApacheLuceneSearchSearcherWarmer_withJavaUtilConcurrentExecutorService_, capture$0, capture$1)
}
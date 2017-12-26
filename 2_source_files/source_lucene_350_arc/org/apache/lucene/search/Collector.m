//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/Collector.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/Scorer.h"

@implementation OrgApacheLuceneSearchCollector

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchCollector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)collectWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)acceptsDocsOutOfOrder {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 3, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 6, 2, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[2].selector = @selector(collectWithInt:);
  methods[3].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[4].selector = @selector(acceptsDocsOutOfOrder);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setScorer", "LOrgApacheLuceneSearchScorer;", "LJavaIoIOException;", "collect", "I", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchCollector = { "Collector", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x401, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchCollector;
}

@end

void OrgApacheLuceneSearchCollector_init(OrgApacheLuceneSearchCollector *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchCollector)

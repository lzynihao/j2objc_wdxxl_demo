//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/TopScoreDocCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/HitQueue.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TopDocs.h"
#include "org/apache/lucene/search/TopDocsCollector.h"
#include "org/apache/lucene/search/TopScoreDocCollector.h"
#include "org/apache/lucene/util/PriorityQueue.h"

@interface OrgApacheLuceneSearchTopScoreDocCollector ()

- (instancetype)initWithInt:(jint)numHits;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector *self, jint numHits);

@interface OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector : OrgApacheLuceneSearchTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits;

- (void)collectWithInt:(jint)doc;

- (jboolean)acceptsDocsOutOfOrder;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector *self, jint numHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector)

@interface OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector : OrgApacheLuceneSearchTopScoreDocCollector {
 @public
  OrgApacheLuceneSearchScoreDoc *after_;
  jint afterDoc_;
  jint collectedHits_;
}

- (instancetype)initWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                              withInt:(jint)numHits;

- (void)collectWithInt:(jint)doc;

- (jboolean)acceptsDocsOutOfOrder;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base;

- (jint)topDocsSize;

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector, after_, OrgApacheLuceneSearchScoreDoc *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector *self, OrgApacheLuceneSearchScoreDoc *after, jint numHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector)

@interface OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector : OrgApacheLuceneSearchTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits;

- (void)collectWithInt:(jint)doc;

- (jboolean)acceptsDocsOutOfOrder;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector *self, jint numHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector)

@interface OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector : OrgApacheLuceneSearchTopScoreDocCollector {
 @public
  OrgApacheLuceneSearchScoreDoc *after_;
  jint afterDoc_;
  jint collectedHits_;
}

- (instancetype)initWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                              withInt:(jint)numHits;

- (void)collectWithInt:(jint)doc;

- (jboolean)acceptsDocsOutOfOrder;

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base;

- (jint)topDocsSize;

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector, after_, OrgApacheLuceneSearchScoreDoc *)

__attribute__((unused)) static void OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector *self, OrgApacheLuceneSearchScoreDoc *after, jint numHits);

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector

+ (OrgApacheLuceneSearchTopScoreDocCollector *)createWithInt:(jint)numHits
                                                 withBoolean:(jboolean)docsScoredInOrder {
  return OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withBoolean_(numHits, docsScoredInOrder);
}

+ (OrgApacheLuceneSearchTopScoreDocCollector *)createWithInt:(jint)numHits
                           withOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                 withBoolean:(jboolean)docsScoredInOrder {
  return OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_withBoolean_(numHits, after, docsScoredInOrder);
}

- (instancetype)initWithInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
  return self;
}

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start {
  if (results == nil) {
    return JreLoadStatic(OrgApacheLuceneSearchTopDocsCollector, EMPTY_TOPDOCS);
  }
  jfloat maxScore = JavaLangFloat_NaN;
  if (start == 0) {
    maxScore = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(IOSObjectArray_Get(results, 0)))->score_;
  }
  else {
    for (jint i = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size]; i > 1; i--) {
      (void) [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) pop];
    }
    maxScore = ((OrgApacheLuceneSearchScoreDoc *) nil_chk([((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) pop]))->score_;
  }
  return new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHits_, results, maxScore);
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base {
  docBase_ = base;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  self->scorer_ = scorer;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneSearchTopScoreDocCollector;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopScoreDocCollector;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 10, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(createWithInt:withBoolean:);
  methods[1].selector = @selector(createWithInt:withOrgApacheLuceneSearchScoreDoc:withBoolean:);
  methods[2].selector = @selector(initWithInt:);
  methods[3].selector = @selector(newTopDocsWithOrgApacheLuceneSearchScoreDocArray:withInt:);
  methods[4].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[5].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pqTop_", "LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "docBase_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "scorer_", "LOrgApacheLuceneSearchScorer;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "create", "IZ", "ILOrgApacheLuceneSearchScoreDoc;Z", "I", "newTopDocs", "[LOrgApacheLuceneSearchScoreDoc;I", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "setScorer", "LOrgApacheLuceneSearchScorer;", "LJavaIoIOException;", "LOrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector;LOrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector;LOrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector;LOrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector;", "Lorg/apache/lucene/search/TopDocsCollector<Lorg/apache/lucene/search/ScoreDoc;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector = { "TopScoreDocCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 6, 3, -1, 11, -1, 12, -1 };
  return &_OrgApacheLuceneSearchTopScoreDocCollector;
}

@end

OrgApacheLuceneSearchTopScoreDocCollector *OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withBoolean_(jint numHits, jboolean docsScoredInOrder) {
  OrgApacheLuceneSearchTopScoreDocCollector_initialize();
  return OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_withBoolean_(numHits, nil, docsScoredInOrder);
}

OrgApacheLuceneSearchTopScoreDocCollector *OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_withBoolean_(jint numHits, OrgApacheLuceneSearchScoreDoc *after, jboolean docsScoredInOrder) {
  OrgApacheLuceneSearchTopScoreDocCollector_initialize();
  if (numHits <= 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"numHits must be > 0; please use TotalHitCountCollector if you just need the total hit count");
  }
  if (docsScoredInOrder) {
    return after == nil ? new_OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(numHits) : (id) new_OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(after, numHits);
  }
  else {
    return after == nil ? new_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(numHits) : (id) new_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(after, numHits);
  }
}

void OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector *self, jint numHits) {
  OrgApacheLuceneSearchTopDocsCollector_initWithOrgApacheLuceneUtilPriorityQueue_(self, new_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(numHits, true));
  self->docBase_ = 0;
  self->pqTop_ = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(self->pq_)) top];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(self, numHits);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jfloat score = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  JreAssert((score != JavaLangFloat_NEGATIVE_INFINITY), (@"org/apache/lucene/search/TopScoreDocCollector.java:50 condition failed: assert score != Float.NEGATIVE_INFINITY;"));
  JreAssert((!JavaLangFloat_isNaNWithFloat_(score)), (@"org/apache/lucene/search/TopScoreDocCollector.java:51 condition failed: assert !Float.isNaN(score);"));
  totalHits_++;
  if (score <= ((OrgApacheLuceneSearchScoreDoc *) nil_chk(pqTop_))->score_) {
    return;
  }
  pqTop_->doc_ = doc + docBase_;
  pqTop_->score_ = score;
  pqTop_ = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) updateTop];
}

- (jboolean)acceptsDocsOutOfOrder {
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, 2, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(collectWithInt:);
  methods[2].selector = @selector(acceptsDocsOutOfOrder);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "collect", "LJavaIoIOException;", "LOrgApacheLuceneSearchTopScoreDocCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector = { "InOrderTopScoreDocCollector", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0xa, 3, 0, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector *self, jint numHits) {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
}

OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(jint numHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector, initWithInt_, numHits)
}

OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector_initWithInt_(jint numHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector, initWithInt_, numHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_InOrderTopScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector

- (instancetype)initWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                              withInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(self, after, numHits);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jfloat score = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  JreAssert((score != JavaLangFloat_NEGATIVE_INFINITY), (@"org/apache/lucene/search/TopScoreDocCollector.java:88 condition failed: assert score != Float.NEGATIVE_INFINITY;"));
  JreAssert((!JavaLangFloat_isNaNWithFloat_(score)), (@"org/apache/lucene/search/TopScoreDocCollector.java:89 condition failed: assert !Float.isNaN(score);"));
  totalHits_++;
  if (score > ((OrgApacheLuceneSearchScoreDoc *) nil_chk(after_))->score_ || (score == after_->score_ && doc <= afterDoc_)) {
    return;
  }
  if (score <= ((OrgApacheLuceneSearchScoreDoc *) nil_chk(pqTop_))->score_) {
    return;
  }
  collectedHits_++;
  pqTop_->doc_ = doc + docBase_;
  pqTop_->score_ = score;
  pqTop_ = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) updateTop];
}

- (jboolean)acceptsDocsOutOfOrder {
  return false;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base {
  [super setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:base];
  afterDoc_ = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(after_))->doc_ - docBase_;
}

- (jint)topDocsSize {
  return collectedHits_ < [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size] ? collectedHits_ : [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size];
}

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start {
  return results == nil ? new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHits_, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()], JavaLangFloat_NaN) : new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(totalHits_, results);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0x4, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchScoreDoc:withInt:);
  methods[1].selector = @selector(collectWithInt:);
  methods[2].selector = @selector(acceptsDocsOutOfOrder);
  methods[3].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[4].selector = @selector(topDocsSize);
  methods[5].selector = @selector(newTopDocsWithOrgApacheLuceneSearchScoreDocArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "after_", "LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "afterDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "collectedHits_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchScoreDoc;I", "collect", "I", "LJavaIoIOException;", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "newTopDocs", "[LOrgApacheLuceneSearchScoreDoc;I", "LOrgApacheLuceneSearchTopScoreDocCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector = { "InOrderPagingScoreDocCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 6, 3, 8, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector *self, OrgApacheLuceneSearchScoreDoc *after, jint numHits) {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
  self->after_ = after;
}

OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector, initWithOrgApacheLuceneSearchScoreDoc_withInt_, after, numHits)
}

OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector, initWithOrgApacheLuceneSearchScoreDoc_withInt_, after, numHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_InOrderPagingScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector

- (instancetype)initWithInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(self, numHits);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jfloat score = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  JreAssert((!JavaLangFloat_isNaNWithFloat_(score)), (@"org/apache/lucene/search/TopScoreDocCollector.java:143 condition failed: assert !Float.isNaN(score);"));
  totalHits_++;
  if (score < ((OrgApacheLuceneSearchScoreDoc *) nil_chk(pqTop_))->score_) {
    return;
  }
  doc += docBase_;
  if (score == pqTop_->score_ && doc > pqTop_->doc_) {
    return;
  }
  pqTop_->doc_ = doc;
  pqTop_->score_ = score;
  pqTop_ = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) updateTop];
}

- (jboolean)acceptsDocsOutOfOrder {
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, 2, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(collectWithInt:);
  methods[2].selector = @selector(acceptsDocsOutOfOrder);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "collect", "LJavaIoIOException;", "LOrgApacheLuceneSearchTopScoreDocCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector = { "OutOfOrderTopScoreDocCollector", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0xa, 3, 0, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector *self, jint numHits) {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
}

OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(jint numHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector, initWithInt_, numHits)
}

OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector_initWithInt_(jint numHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector, initWithInt_, numHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderTopScoreDocCollector)

@implementation OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector

- (instancetype)initWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                              withInt:(jint)numHits {
  OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(self, after, numHits);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jfloat score = [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) score];
  JreAssert((!JavaLangFloat_isNaNWithFloat_(score)), (@"org/apache/lucene/search/TopScoreDocCollector.java:183 condition failed: assert !Float.isNaN(score);"));
  totalHits_++;
  if (score > ((OrgApacheLuceneSearchScoreDoc *) nil_chk(after_))->score_ || (score == after_->score_ && doc <= afterDoc_)) {
    return;
  }
  if (score < ((OrgApacheLuceneSearchScoreDoc *) nil_chk(pqTop_))->score_) {
    return;
  }
  doc += docBase_;
  if (score == pqTop_->score_ && doc > pqTop_->doc_) {
    return;
  }
  collectedHits_++;
  pqTop_->doc_ = doc;
  pqTop_->score_ = score;
  pqTop_ = [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) updateTop];
}

- (jboolean)acceptsDocsOutOfOrder {
  return true;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)base {
  [super setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:base];
  afterDoc_ = ((OrgApacheLuceneSearchScoreDoc *) nil_chk(after_))->doc_ - docBase_;
}

- (jint)topDocsSize {
  return collectedHits_ < [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size] ? collectedHits_ : [((OrgApacheLuceneUtilPriorityQueue *) nil_chk(pq_)) size];
}

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start {
  return results == nil ? new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(totalHits_, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_()], JavaLangFloat_NaN) : new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(totalHits_, results);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTopDocs;", 0x4, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchScoreDoc:withInt:);
  methods[1].selector = @selector(collectWithInt:);
  methods[2].selector = @selector(acceptsDocsOutOfOrder);
  methods[3].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[4].selector = @selector(topDocsSize);
  methods[5].selector = @selector(newTopDocsWithOrgApacheLuceneSearchScoreDocArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "after_", "LOrgApacheLuceneSearchScoreDoc;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "afterDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "collectedHits_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchScoreDoc;I", "collect", "I", "LJavaIoIOException;", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "newTopDocs", "[LOrgApacheLuceneSearchScoreDoc;I", "LOrgApacheLuceneSearchTopScoreDocCollector;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector = { "OutOfOrderPagingScoreDocCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0xa, 6, 3, 8, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector;
}

@end

void OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector *self, OrgApacheLuceneSearchScoreDoc *after, jint numHits) {
  OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(self, numHits);
  self->after_ = after;
}

OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector *new_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector, initWithOrgApacheLuceneSearchScoreDoc_withInt_, after, numHits)
}

OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector *create_OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector_initWithOrgApacheLuceneSearchScoreDoc_withInt_(OrgApacheLuceneSearchScoreDoc *after, jint numHits) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector, initWithOrgApacheLuceneSearchScoreDoc_withInt_, after, numHits)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTopScoreDocCollector_OutOfOrderPagingScoreDocCollector)

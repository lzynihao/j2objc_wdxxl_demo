//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/DisjunctionMaxQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Float.h"
#include "java/lang/Iterable.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/ComplexExplanation.h"
#include "org/apache/lucene/search/DisjunctionMaxQuery.h"
#include "org/apache/lucene/search/DisjunctionMaxScorer.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Searcher.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchDisjunctionMaxQuery () {
 @public
  JavaUtilArrayList *disjuncts_;
  jfloat tieBreakerMultiplier_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisjunctionMaxQuery, disjuncts_, JavaUtilArrayList *)

@interface OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight () {
 @public
  OrgApacheLuceneSearchDisjunctionMaxQuery *this$0_;
}

@end

@implementation OrgApacheLuceneSearchDisjunctionMaxQuery

- (instancetype)initWithFloat:(jfloat)tieBreakerMultiplier {
  OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(self, tieBreakerMultiplier);
  return self;
}

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)disjuncts
                                 withFloat:(jfloat)tieBreakerMultiplier {
  OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(self, disjuncts, tieBreakerMultiplier);
  return self;
}

- (void)addWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  [((JavaUtilArrayList *) nil_chk(disjuncts_)) addWithId:query];
}

- (void)addWithJavaUtilCollection:(id<JavaUtilCollection>)disjuncts {
  [((JavaUtilArrayList *) nil_chk(self->disjuncts_)) addAllWithJavaUtilCollection:disjuncts];
}

- (id<JavaUtilIterator>)iterator {
  return [((JavaUtilArrayList *) nil_chk(disjuncts_)) iterator];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  return create_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_(self, searcher);
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  jint numDisjunctions = [((JavaUtilArrayList *) nil_chk(disjuncts_)) size];
  if (numDisjunctions == 1) {
    OrgApacheLuceneSearchQuery *singleton = [((JavaUtilArrayList *) nil_chk(disjuncts_)) getWithInt:0];
    OrgApacheLuceneSearchQuery *result = [((OrgApacheLuceneSearchQuery *) nil_chk(singleton)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
    if ([self getBoost] != 1.0f) {
      if (result == singleton) result = (OrgApacheLuceneSearchQuery *) cast_chk([((OrgApacheLuceneSearchQuery *) nil_chk(result)) java_clone], [OrgApacheLuceneSearchQuery class]);
      [((OrgApacheLuceneSearchQuery *) nil_chk(result)) setBoostWithFloat:[self getBoost] * [result getBoost]];
    }
    return result;
  }
  OrgApacheLuceneSearchDisjunctionMaxQuery *clone = nil;
  for (jint i = 0; i < numDisjunctions; i++) {
    OrgApacheLuceneSearchQuery *clause = [((JavaUtilArrayList *) nil_chk(disjuncts_)) getWithInt:i];
    OrgApacheLuceneSearchQuery *rewrite = [((OrgApacheLuceneSearchQuery *) nil_chk(clause)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
    if (rewrite != clause) {
      if (clone == nil) clone = (OrgApacheLuceneSearchDisjunctionMaxQuery *) cast_chk([self java_clone], [OrgApacheLuceneSearchDisjunctionMaxQuery class]);
      [((JavaUtilArrayList *) nil_chk(((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(clone))->disjuncts_)) setWithInt:i withId:rewrite];
    }
  }
  if (clone != nil) return clone;
  else return self;
}

- (id)java_clone {
  OrgApacheLuceneSearchDisjunctionMaxQuery *clone = (OrgApacheLuceneSearchDisjunctionMaxQuery *) cast_chk([super java_clone], [OrgApacheLuceneSearchDisjunctionMaxQuery class]);
  JreStrongAssign(&((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(clone))->disjuncts_, (JavaUtilArrayList *) cast_chk([((JavaUtilArrayList *) nil_chk(self->disjuncts_)) java_clone], [JavaUtilArrayList class]));
  return clone;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  for (OrgApacheLuceneSearchQuery * __strong query in nil_chk(disjuncts_)) {
    [((OrgApacheLuceneSearchQuery *) nil_chk(query)) extractTermsWithJavaUtilSet:terms];
  }
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"("];
  jint numDisjunctions = [((JavaUtilArrayList *) nil_chk(disjuncts_)) size];
  for (jint i = 0; i < numDisjunctions; i++) {
    OrgApacheLuceneSearchQuery *subquery = [((JavaUtilArrayList *) nil_chk(disjuncts_)) getWithInt:i];
    if ([subquery isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
      [buffer appendWithNSString:@"("];
      [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(subquery)) toStringWithNSString:field]];
      [buffer appendWithNSString:@")"];
    }
    else [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(subquery)) toStringWithNSString:field]];
    if (i != numDisjunctions - 1) [buffer appendWithNSString:@" | "];
  }
  [buffer appendWithNSString:@")"];
  if (tieBreakerMultiplier_ != 0.0f) {
    [buffer appendWithNSString:@"~"];
    [buffer appendWithFloat:tieBreakerMultiplier_];
  }
  if ([self getBoost] != 1.0) {
    [buffer appendWithNSString:@"^"];
    [buffer appendWithFloat:[self getBoost]];
  }
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchDisjunctionMaxQuery class]])) return false;
  OrgApacheLuceneSearchDisjunctionMaxQuery *other = (OrgApacheLuceneSearchDisjunctionMaxQuery *) cast_chk(o, [OrgApacheLuceneSearchDisjunctionMaxQuery class]);
  return [self getBoost] == [((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(other)) getBoost] && self->tieBreakerMultiplier_ == other->tieBreakerMultiplier_ && [((JavaUtilArrayList *) nil_chk(self->disjuncts_)) isEqual:other->disjuncts_];
}

- (NSUInteger)hash {
  return JavaLangFloat_floatToIntBitsWithFloat_([self getBoost]) + JavaLangFloat_floatToIntBitsWithFloat_(tieBreakerMultiplier_) + ((jint) [((JavaUtilArrayList *) nil_chk(disjuncts_)) hash]);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (void)dealloc {
  RELEASE_(disjuncts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 5, -1, 6, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 8, 9, 10, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 11, 12, 10, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 13, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, 16, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, 18, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 21, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithFloat:);
  methods[1].selector = @selector(initWithJavaUtilCollection:withFloat:);
  methods[2].selector = @selector(addWithOrgApacheLuceneSearchQuery:);
  methods[3].selector = @selector(addWithJavaUtilCollection:);
  methods[4].selector = @selector(iterator);
  methods[5].selector = @selector(createWeightWithOrgApacheLuceneSearchSearcher:);
  methods[6].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[7].selector = @selector(java_clone);
  methods[8].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[9].selector = @selector(toStringWithNSString:);
  methods[10].selector = @selector(isEqual:);
  methods[11].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "disjuncts_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 22, -1 },
    { "tieBreakerMultiplier_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "F", "LJavaUtilCollection;F", "(Ljava/util/Collection<Lorg/apache/lucene/search/Query;>;F)V", "add", "LOrgApacheLuceneSearchQuery;", "LJavaUtilCollection;", "(Ljava/util/Collection<Lorg/apache/lucene/search/Query;>;)V", "()Ljava/util/Iterator<Lorg/apache/lucene/search/Query;>;", "createWeight", "LOrgApacheLuceneSearchSearcher;", "LJavaIoIOException;", "rewrite", "LOrgApacheLuceneIndexIndexReader;", "clone", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", "Ljava/util/ArrayList<Lorg/apache/lucene/search/Query;>;", "LOrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight;", "Lorg/apache/lucene/search/Query;Ljava/lang/Iterable<Lorg/apache/lucene/search/Query;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionMaxQuery = { "DisjunctionMaxQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 12, 2, -1, 23, -1, 24, -1 };
  return &_OrgApacheLuceneSearchDisjunctionMaxQuery;
}

@end

void OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(OrgApacheLuceneSearchDisjunctionMaxQuery *self, jfloat tieBreakerMultiplier) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->disjuncts_, new_JavaUtilArrayList_init());
  self->tieBreakerMultiplier_ = 0.0f;
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
}

OrgApacheLuceneSearchDisjunctionMaxQuery *new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(jfloat tieBreakerMultiplier) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithFloat_, tieBreakerMultiplier)
}

OrgApacheLuceneSearchDisjunctionMaxQuery *create_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithFloat_(jfloat tieBreakerMultiplier) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithFloat_, tieBreakerMultiplier)
}

void OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(OrgApacheLuceneSearchDisjunctionMaxQuery *self, id<JavaUtilCollection> disjuncts, jfloat tieBreakerMultiplier) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->disjuncts_, new_JavaUtilArrayList_init());
  self->tieBreakerMultiplier_ = 0.0f;
  self->tieBreakerMultiplier_ = tieBreakerMultiplier;
  [self addWithJavaUtilCollection:disjuncts];
}

OrgApacheLuceneSearchDisjunctionMaxQuery *new_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(id<JavaUtilCollection> disjuncts, jfloat tieBreakerMultiplier) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithJavaUtilCollection_withFloat_, disjuncts, tieBreakerMultiplier)
}

OrgApacheLuceneSearchDisjunctionMaxQuery *create_OrgApacheLuceneSearchDisjunctionMaxQuery_initWithJavaUtilCollection_withFloat_(id<JavaUtilCollection> disjuncts, jfloat tieBreakerMultiplier) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery, initWithJavaUtilCollection_withFloat_, disjuncts, tieBreakerMultiplier)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionMaxQuery)

@implementation OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight

- (instancetype)initWithOrgApacheLuceneSearchDisjunctionMaxQuery:(OrgApacheLuceneSearchDisjunctionMaxQuery *)outer$
                               withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_(self, outer$, searcher);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQuery {
  return this$0_;
}

- (jfloat)getValue {
  return [this$0_ getBoost];
}

- (jfloat)sumOfSquaredWeights {
  jfloat max = 0.0f;
  jfloat sum = 0.0f;
  for (OrgApacheLuceneSearchWeight * __strong currentWeight in nil_chk(weights_)) {
    jfloat sub = [((OrgApacheLuceneSearchWeight *) nil_chk(currentWeight)) sumOfSquaredWeights];
    JrePlusAssignFloatF(&sum, sub);
    max = JavaLangMath_maxWithFloat_withFloat_(max, sub);
  }
  jfloat boost = [this$0_ getBoost];
  return (((sum - max) * this$0_->tieBreakerMultiplier_ * this$0_->tieBreakerMultiplier_) + max) * boost * boost;
}

- (void)normalizeWithFloat:(jfloat)norm {
  JreTimesAssignFloatF(&norm, [this$0_ getBoost]);
  for (OrgApacheLuceneSearchWeight * __strong wt in nil_chk(weights_)) {
    [((OrgApacheLuceneSearchWeight *) nil_chk(wt)) normalizeWithFloat:norm];
  }
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                               withBoolean:(jboolean)scoreDocsInOrder
                                                               withBoolean:(jboolean)topScorer {
  IOSObjectArray *scorers = [IOSObjectArray arrayWithLength:[((JavaUtilArrayList *) nil_chk(weights_)) size] type:OrgApacheLuceneSearchScorer_class_()];
  jint idx = 0;
  for (OrgApacheLuceneSearchWeight * __strong w in nil_chk(weights_)) {
    OrgApacheLuceneSearchScorer *subScorer = [((OrgApacheLuceneSearchWeight *) nil_chk(w)) scorerWithOrgApacheLuceneIndexIndexReader:reader withBoolean:true withBoolean:false];
    if (subScorer != nil && [subScorer nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      IOSObjectArray_Set(scorers, idx++, subScorer);
    }
  }
  if (idx == 0) return nil;
  OrgApacheLuceneSearchDisjunctionMaxScorer *result = create_OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withOrgApacheLuceneSearchSimilarity_withOrgApacheLuceneSearchScorerArray_withInt_(self, this$0_->tieBreakerMultiplier_, similarity_, scorers, idx);
  return result;
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                         withInt:(jint)doc {
  if ([((JavaUtilArrayList *) nil_chk(this$0_->disjuncts_)) size] == 1) return [((OrgApacheLuceneSearchWeight *) nil_chk([((JavaUtilArrayList *) nil_chk(weights_)) getWithInt:0])) explainWithOrgApacheLuceneIndexIndexReader:reader withInt:doc];
  OrgApacheLuceneSearchComplexExplanation *result = create_OrgApacheLuceneSearchComplexExplanation_init();
  jfloat max = 0.0f;
  jfloat sum = 0.0f;
  [result setDescriptionWithNSString:this$0_->tieBreakerMultiplier_ == 0.0f ? @"max of:" : JreStrcat("$F$", @"max plus ", this$0_->tieBreakerMultiplier_, @" times others of:")];
  for (OrgApacheLuceneSearchWeight * __strong wt in nil_chk(weights_)) {
    OrgApacheLuceneSearchExplanation *e = [((OrgApacheLuceneSearchWeight *) nil_chk(wt)) explainWithOrgApacheLuceneIndexIndexReader:reader withInt:doc];
    if ([((OrgApacheLuceneSearchExplanation *) nil_chk(e)) isMatch]) {
      [result setMatchWithJavaLangBoolean:JreLoadStatic(JavaLangBoolean, TRUE)];
      [result addDetailWithOrgApacheLuceneSearchExplanation:e];
      JrePlusAssignFloatF(&sum, [e getValue]);
      max = JavaLangMath_maxWithFloat_withFloat_(max, [e getValue]);
    }
  }
  [result setValueWithFloat:max + (sum - max) * this$0_->tieBreakerMultiplier_];
  return result;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(similarity_);
  RELEASE_(weights_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 6, 7, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDisjunctionMaxQuery:withOrgApacheLuceneSearchSearcher:);
  methods[1].selector = @selector(getQuery);
  methods[2].selector = @selector(getValue);
  methods[3].selector = @selector(sumOfSquaredWeights);
  methods[4].selector = @selector(normalizeWithFloat:);
  methods[5].selector = @selector(scorerWithOrgApacheLuceneIndexIndexReader:withBoolean:withBoolean:);
  methods[6].selector = @selector(explainWithOrgApacheLuceneIndexIndexReader:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchDisjunctionMaxQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "similarity_", "LOrgApacheLuceneSearchSimilarity;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "weights_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x4, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSearcher;", "LJavaIoIOException;", "normalize", "F", "scorer", "LOrgApacheLuceneIndexIndexReader;ZZ", "explain", "LOrgApacheLuceneIndexIndexReader;I", "Ljava/util/ArrayList<Lorg/apache/lucene/search/Weight;>;", "LOrgApacheLuceneSearchDisjunctionMaxQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight = { "DisjunctionMaxWeight", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x4, 7, 3, 9, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight;
}

@end

void OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight *self, OrgApacheLuceneSearchDisjunctionMaxQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchWeight_init(self);
  JreStrongAssignAndConsume(&self->weights_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->similarity_, [((OrgApacheLuceneSearchSearcher *) nil_chk(searcher)) getSimilarity]);
  for (OrgApacheLuceneSearchQuery * __strong disjunctQuery in nil_chk(outer$->disjuncts_)) {
    [((JavaUtilArrayList *) nil_chk(self->weights_)) addWithId:[((OrgApacheLuceneSearchQuery *) nil_chk(disjunctQuery)) createWeightWithOrgApacheLuceneSearchSearcher:searcher]];
  }
}

OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight *new_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchDisjunctionMaxQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight, initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_, outer$, searcher)
}

OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight *create_OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight_initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchDisjunctionMaxQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight, initWithOrgApacheLuceneSearchDisjunctionMaxQuery_withOrgApacheLuceneSearchSearcher_, outer$, searcher)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionMaxQuery_DisjunctionMaxWeight)
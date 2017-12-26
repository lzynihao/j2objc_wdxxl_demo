//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/ExactPhraseScorer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/TermPositions.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/ExactPhraseScorer.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchExactPhraseScorer () {
 @public
  IOSByteArray *norms_;
  jfloat value_;
  IOSFloatArray *scoreCache_;
  jint endMinus1_;
  jint gen_;
  IOSIntArray *counts_;
  IOSIntArray *gens_;
  IOSObjectArray *chunkStates_;
  jint docID_;
  jint freq_;
}

- (jint)phraseFreq;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, norms_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, scoreCache_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, counts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, gens_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer, chunkStates_, IOSObjectArray *)

inline jint OrgApacheLuceneSearchExactPhraseScorer_get_SCORE_CACHE_SIZE();
#define OrgApacheLuceneSearchExactPhraseScorer_SCORE_CACHE_SIZE 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchExactPhraseScorer, SCORE_CACHE_SIZE, jint)

inline jint OrgApacheLuceneSearchExactPhraseScorer_get_CHUNK();
#define OrgApacheLuceneSearchExactPhraseScorer_CHUNK 4096
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchExactPhraseScorer, CHUNK, jint)

__attribute__((unused)) static jint OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(OrgApacheLuceneSearchExactPhraseScorer *self);

@interface OrgApacheLuceneSearchExactPhraseScorer_ChunkState : NSObject {
 @public
  id<OrgApacheLuceneIndexTermPositions> posEnum_;
  jint offset_;
  jboolean useAdvance_;
  jint posUpto_;
  jint posLimit_;
  jint pos_;
  jint lastPos_;
}

- (instancetype)initWithOrgApacheLuceneIndexTermPositions:(id<OrgApacheLuceneIndexTermPositions>)posEnum
                                                  withInt:(jint)offset
                                              withBoolean:(jboolean)useAdvance;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchExactPhraseScorer_ChunkState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExactPhraseScorer_ChunkState, posEnum_, id<OrgApacheLuceneIndexTermPositions>)

__attribute__((unused)) static void OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(OrgApacheLuceneSearchExactPhraseScorer_ChunkState *self, id<OrgApacheLuceneIndexTermPositions> posEnum, jint offset, jboolean useAdvance);

__attribute__((unused)) static OrgApacheLuceneSearchExactPhraseScorer_ChunkState *new_OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(id<OrgApacheLuceneIndexTermPositions> posEnum, jint offset, jboolean useAdvance) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchExactPhraseScorer_ChunkState *create_OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(id<OrgApacheLuceneIndexTermPositions> posEnum, jint offset, jboolean useAdvance);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchExactPhraseScorer_ChunkState)

@implementation OrgApacheLuceneSearchExactPhraseScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:(IOSObjectArray *)postings
                withOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity
                                      withByteArray:(IOSByteArray *)norms {
  OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, weight, postings, similarity, norms);
  return self;
}

- (jint)nextDoc {
  while (true) {
    if (![((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(nil_chk(chunkStates_), 0)))->posEnum_)) next]) {
      docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
      return docID_;
    }
    jint doc = [((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, 0)))->posEnum_ doc];
    jint i = 1;
    while (i < chunkStates_->size_) {
      OrgApacheLuceneSearchExactPhraseScorer_ChunkState *cs = IOSObjectArray_Get(chunkStates_, i);
      jint doc2 = [((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(cs))->posEnum_ doc];
      if (cs->useAdvance_) {
        if (doc2 < doc) {
          if (![cs->posEnum_ skipToWithInt:doc]) {
            docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
            return docID_;
          }
          else {
            doc2 = [cs->posEnum_ doc];
          }
        }
      }
      else {
        jint iter = 0;
        while (doc2 < doc) {
          if (++iter == 50) {
            if (![cs->posEnum_ skipToWithInt:doc]) {
              docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
              return docID_;
            }
            else {
              doc2 = [cs->posEnum_ doc];
            }
            break;
          }
          else {
            if ([cs->posEnum_ next]) {
              doc2 = [cs->posEnum_ doc];
            }
            else {
              docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
              return docID_;
            }
          }
        }
      }
      if (doc2 > doc) {
        break;
      }
      i++;
    }
    if (i == chunkStates_->size_) {
      docID_ = doc;
      freq_ = OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(self);
      if (freq_ != 0) {
        return docID_;
      }
    }
  }
}

- (jint)advanceWithInt:(jint)target {
  if (![((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(nil_chk(chunkStates_), 0)))->posEnum_)) skipToWithInt:target]) {
    docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    return docID_;
  }
  jint doc = [((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, 0)))->posEnum_ doc];
  while (true) {
    jint i = 1;
    while (i < chunkStates_->size_) {
      jint doc2 = [((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, i)))->posEnum_ doc];
      if (doc2 < doc) {
        if (![((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, i)))->posEnum_ skipToWithInt:doc]) {
          docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
          return docID_;
        }
        else {
          doc2 = [((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, i)))->posEnum_ doc];
        }
      }
      if (doc2 > doc) {
        break;
      }
      i++;
    }
    if (i == chunkStates_->size_) {
      docID_ = doc;
      freq_ = OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(self);
      if (freq_ != 0) {
        return docID_;
      }
    }
    if (![((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, 0)))->posEnum_ next]) {
      docID_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
      return docID_;
    }
    else {
      doc = [((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(IOSObjectArray_Get(chunkStates_, 0)))->posEnum_ doc];
    }
  }
}

- (NSString *)description {
  return JreStrcat("$@C", @"ExactPhraseScorer(", weight_, ')');
}

- (jfloat)freq {
  return freq_;
}

- (jint)docID {
  return docID_;
}

- (jfloat)score {
  jfloat raw;
  if (freq_ < OrgApacheLuceneSearchExactPhraseScorer_SCORE_CACHE_SIZE) {
    raw = IOSFloatArray_Get(nil_chk(scoreCache_), freq_);
  }
  else {
    raw = [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) tfWithFloat:(jfloat) freq_] * value_;
  }
  return norms_ == nil ? raw : raw * [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) decodeNormValueWithByte:IOSByteArray_Get(norms_, docID_)];
}

- (jint)phraseFreq {
  return OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray:withOrgApacheLuceneSearchSimilarity:withByteArray:);
  methods[1].selector = @selector(nextDoc);
  methods[2].selector = @selector(advanceWithInt:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(freq);
  methods[5].selector = @selector(docID);
  methods[6].selector = @selector(score);
  methods[7].selector = @selector(phraseFreq);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "norms_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "SCORE_CACHE_SIZE", "I", .constantValue.asInt = OrgApacheLuceneSearchExactPhraseScorer_SCORE_CACHE_SIZE, 0x1a, -1, -1, -1, -1 },
    { "scoreCache_", "[F", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "endMinus1_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "CHUNK", "I", .constantValue.asInt = OrgApacheLuceneSearchExactPhraseScorer_CHUNK, 0x1a, -1, -1, -1, -1 },
    { "gen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "counts_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "gens_", "[I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "noDocs_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "chunkStates_", "[LOrgApacheLuceneSearchExactPhraseScorer_ChunkState;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "docID_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "freq_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchWeight;[LOrgApacheLuceneSearchPhraseQuery_PostingsAndFreq;LOrgApacheLuceneSearchSimilarity;[B", "LJavaIoIOException;", "advance", "I", "toString", "LOrgApacheLuceneSearchExactPhraseScorer_ChunkState;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchExactPhraseScorer = { "ExactPhraseScorer", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x10, 8, 13, -1, 5, -1, -1, -1 };
  return &_OrgApacheLuceneSearchExactPhraseScorer;
}

@end

void OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchExactPhraseScorer *self, OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchSimilarity_withOrgApacheLuceneSearchWeight_(self, similarity, weight);
  self->scoreCache_ = [IOSFloatArray newArrayWithLength:OrgApacheLuceneSearchExactPhraseScorer_SCORE_CACHE_SIZE];
  self->counts_ = [IOSIntArray newArrayWithLength:OrgApacheLuceneSearchExactPhraseScorer_CHUNK];
  self->gens_ = [IOSIntArray newArrayWithLength:OrgApacheLuceneSearchExactPhraseScorer_CHUNK];
  self->docID_ = -1;
  self->norms_ = norms;
  self->value_ = [((OrgApacheLuceneSearchWeight *) nil_chk(weight)) getValue];
  self->chunkStates_ = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(postings))->size_ type:OrgApacheLuceneSearchExactPhraseScorer_ChunkState_class_()];
  self->endMinus1_ = postings->size_ - 1;
  for (jint i = 0; i < postings->size_; i++) {
    jboolean useAdvance = ((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(IOSObjectArray_Get(postings, i)))->docFreq_ > 5 * ((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(IOSObjectArray_Get(postings, 0)))->docFreq_;
    (void) IOSObjectArray_SetAndConsume(self->chunkStates_, i, new_OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(IOSObjectArray_Get(postings, i)))->postings_, -((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(IOSObjectArray_Get(postings, i)))->position_, useAdvance));
    if (i > 0 && ![((id<OrgApacheLuceneIndexTermPositions>) nil_chk(((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(IOSObjectArray_Get(postings, i)))->postings_)) next]) {
      self->noDocs_ = true;
      return;
    }
  }
  for (jint i = 0; i < OrgApacheLuceneSearchExactPhraseScorer_SCORE_CACHE_SIZE; i++) {
    *IOSFloatArray_GetRef(self->scoreCache_, i) = [((OrgApacheLuceneSearchSimilarity *) nil_chk([self getSimilarity])) tfWithFloat:(jfloat) i] * self->value_;
  }
}

OrgApacheLuceneSearchExactPhraseScorer *new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchExactPhraseScorer, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_, weight, postings, similarity, norms)
}

OrgApacheLuceneSearchExactPhraseScorer *create_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchWeight *weight, IOSObjectArray *postings, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchExactPhraseScorer, initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_, weight, postings, similarity, norms)
}

jint OrgApacheLuceneSearchExactPhraseScorer_phraseFreq(OrgApacheLuceneSearchExactPhraseScorer *self) {
  self->freq_ = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->chunkStates_))->size_; i++) {
    OrgApacheLuceneSearchExactPhraseScorer_ChunkState *cs = IOSObjectArray_Get(self->chunkStates_, i);
    ((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(cs))->posLimit_ = [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(cs->posEnum_)) freq];
    cs->pos_ = cs->offset_ + [cs->posEnum_ nextPosition];
    cs->posUpto_ = 1;
    cs->lastPos_ = -1;
  }
  jint chunkStart = 0;
  jint chunkEnd = OrgApacheLuceneSearchExactPhraseScorer_CHUNK;
  jboolean end = false;
  while (!end) {
    self->gen_++;
    if (self->gen_ == 0) {
      JavaUtilArrays_fillWithIntArray_withInt_(self->gens_, 0);
      self->gen_++;
    }
    {
      OrgApacheLuceneSearchExactPhraseScorer_ChunkState *cs = IOSObjectArray_Get(self->chunkStates_, 0);
      while (((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(cs))->pos_ < chunkEnd) {
        if (cs->pos_ > cs->lastPos_) {
          cs->lastPos_ = cs->pos_;
          jint posIndex = cs->pos_ - chunkStart;
          *IOSIntArray_GetRef(nil_chk(self->counts_), posIndex) = 1;
          JreAssert((IOSIntArray_Get(nil_chk(self->gens_), posIndex) != self->gen_), (@"org/apache/lucene/search/ExactPhraseScorer.java:277 condition failed: assert gens[posIndex] != gen;"));
          *IOSIntArray_GetRef(self->gens_, posIndex) = self->gen_;
        }
        if (cs->posUpto_ == cs->posLimit_) {
          end = true;
          break;
        }
        cs->posUpto_++;
        cs->pos_ = cs->offset_ + [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(cs->posEnum_)) nextPosition];
      }
    }
    jboolean any = true;
    for (jint t = 1; t < self->endMinus1_; t++) {
      OrgApacheLuceneSearchExactPhraseScorer_ChunkState *cs = IOSObjectArray_Get(self->chunkStates_, t);
      any = false;
      while (((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(cs))->pos_ < chunkEnd) {
        if (cs->pos_ > cs->lastPos_) {
          cs->lastPos_ = cs->pos_;
          jint posIndex = cs->pos_ - chunkStart;
          if (posIndex >= 0 && IOSIntArray_Get(nil_chk(self->gens_), posIndex) == self->gen_ && IOSIntArray_Get(nil_chk(self->counts_), posIndex) == t) {
            (*IOSIntArray_GetRef(nil_chk(self->counts_), posIndex))++;
            any = true;
          }
        }
        if (cs->posUpto_ == cs->posLimit_) {
          end = true;
          break;
        }
        cs->posUpto_++;
        cs->pos_ = cs->offset_ + [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(cs->posEnum_)) nextPosition];
      }
      if (!any) {
        break;
      }
    }
    if (!any) {
      chunkStart += OrgApacheLuceneSearchExactPhraseScorer_CHUNK;
      chunkEnd += OrgApacheLuceneSearchExactPhraseScorer_CHUNK;
      continue;
    }
    {
      OrgApacheLuceneSearchExactPhraseScorer_ChunkState *cs = IOSObjectArray_Get(self->chunkStates_, self->endMinus1_);
      while (((OrgApacheLuceneSearchExactPhraseScorer_ChunkState *) nil_chk(cs))->pos_ < chunkEnd) {
        if (cs->pos_ > cs->lastPos_) {
          cs->lastPos_ = cs->pos_;
          jint posIndex = cs->pos_ - chunkStart;
          if (posIndex >= 0 && IOSIntArray_Get(nil_chk(self->gens_), posIndex) == self->gen_ && IOSIntArray_Get(nil_chk(self->counts_), posIndex) == self->endMinus1_) {
            self->freq_++;
          }
        }
        if (cs->posUpto_ == cs->posLimit_) {
          end = true;
          break;
        }
        cs->posUpto_++;
        cs->pos_ = cs->offset_ + [((id<OrgApacheLuceneIndexTermPositions>) nil_chk(cs->posEnum_)) nextPosition];
      }
    }
    chunkStart += OrgApacheLuceneSearchExactPhraseScorer_CHUNK;
    chunkEnd += OrgApacheLuceneSearchExactPhraseScorer_CHUNK;
  }
  return self->freq_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchExactPhraseScorer)

@implementation OrgApacheLuceneSearchExactPhraseScorer_ChunkState

- (instancetype)initWithOrgApacheLuceneIndexTermPositions:(id<OrgApacheLuceneIndexTermPositions>)posEnum
                                                  withInt:(jint)offset
                                              withBoolean:(jboolean)useAdvance {
  OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(self, posEnum, offset, useAdvance);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermPositions:withInt:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "posEnum_", "LOrgApacheLuceneIndexTermPositions;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "offset_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "useAdvance_", "Z", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "posUpto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "posLimit_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "pos_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastPos_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermPositions;IZ", "LOrgApacheLuceneSearchExactPhraseScorer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchExactPhraseScorer_ChunkState = { "ChunkState", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1a, 1, 7, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchExactPhraseScorer_ChunkState;
}

@end

void OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(OrgApacheLuceneSearchExactPhraseScorer_ChunkState *self, id<OrgApacheLuceneIndexTermPositions> posEnum, jint offset, jboolean useAdvance) {
  NSObject_init(self);
  self->posEnum_ = posEnum;
  self->offset_ = offset;
  self->useAdvance_ = useAdvance;
}

OrgApacheLuceneSearchExactPhraseScorer_ChunkState *new_OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(id<OrgApacheLuceneIndexTermPositions> posEnum, jint offset, jboolean useAdvance) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchExactPhraseScorer_ChunkState, initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_, posEnum, offset, useAdvance)
}

OrgApacheLuceneSearchExactPhraseScorer_ChunkState *create_OrgApacheLuceneSearchExactPhraseScorer_ChunkState_initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_(id<OrgApacheLuceneIndexTermPositions> posEnum, jint offset, jboolean useAdvance) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchExactPhraseScorer_ChunkState, initWithOrgApacheLuceneIndexTermPositions_withInt_withBoolean_, posEnum, offset, useAdvance)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchExactPhraseScorer_ChunkState)

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/MultiCollector.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/MultiCollector.h"
#include "org/apache/lucene/search/Scorer.h"

@interface OrgApacheLuceneSearchMultiCollector () {
 @public
  IOSObjectArray *collectors_;
}

- (instancetype)initWithOrgApacheLuceneSearchCollectorArray:(IOSObjectArray *)collectors;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchMultiCollector, collectors_, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(OrgApacheLuceneSearchMultiCollector *self, IOSObjectArray *collectors);

__attribute__((unused)) static OrgApacheLuceneSearchMultiCollector *new_OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(IOSObjectArray *collectors) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchMultiCollector *create_OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(IOSObjectArray *collectors);

@implementation OrgApacheLuceneSearchMultiCollector

+ (OrgApacheLuceneSearchCollector *)wrapWithOrgApacheLuceneSearchCollectorArray:(IOSObjectArray *)collectors {
  return OrgApacheLuceneSearchMultiCollector_wrapWithOrgApacheLuceneSearchCollectorArray_(collectors);
}

- (instancetype)initWithOrgApacheLuceneSearchCollectorArray:(IOSObjectArray *)collectors {
  OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(self, collectors);
  return self;
}

- (jboolean)acceptsDocsOutOfOrder {
  {
    IOSObjectArray *a__ = collectors_;
    OrgApacheLuceneSearchCollector * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchCollector *c = *b__++;
      if (![((OrgApacheLuceneSearchCollector *) nil_chk(c)) acceptsDocsOutOfOrder]) {
        return false;
      }
    }
  }
  return true;
}

- (void)collectWithInt:(jint)doc {
  {
    IOSObjectArray *a__ = collectors_;
    OrgApacheLuceneSearchCollector * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchCollector *c = *b__++;
      [((OrgApacheLuceneSearchCollector *) nil_chk(c)) collectWithInt:doc];
    }
  }
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)o {
  {
    IOSObjectArray *a__ = collectors_;
    OrgApacheLuceneSearchCollector * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchCollector *c = *b__++;
      [((OrgApacheLuceneSearchCollector *) nil_chk(c)) setNextReaderWithOrgApacheLuceneIndexIndexReader:reader withInt:o];
    }
  }
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)s {
  {
    IOSObjectArray *a__ = collectors_;
    OrgApacheLuceneSearchCollector * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchCollector *c = *b__++;
      [((OrgApacheLuceneSearchCollector *) nil_chk(c)) setScorerWithOrgApacheLuceneSearchScorer:s];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneSearchCollector;", 0x89, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x82, -1, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(wrapWithOrgApacheLuceneSearchCollectorArray:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchCollectorArray:);
  methods[2].selector = @selector(acceptsDocsOutOfOrder);
  methods[3].selector = @selector(collectWithInt:);
  methods[4].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[5].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "collectors_", "[LOrgApacheLuceneSearchCollector;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "wrap", "[LOrgApacheLuceneSearchCollector;", "collect", "I", "LJavaIoIOException;", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "setScorer", "LOrgApacheLuceneSearchScorer;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchMultiCollector = { "MultiCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchMultiCollector;
}

@end

OrgApacheLuceneSearchCollector *OrgApacheLuceneSearchMultiCollector_wrapWithOrgApacheLuceneSearchCollectorArray_(IOSObjectArray *collectors) {
  OrgApacheLuceneSearchMultiCollector_initialize();
  jint n = 0;
  {
    IOSObjectArray *a__ = collectors;
    OrgApacheLuceneSearchCollector * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchCollector *c = *b__++;
      if (c != nil) {
        n++;
      }
    }
  }
  if (n == 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"At least 1 collector must not be null");
  }
  else if (n == 1) {
    OrgApacheLuceneSearchCollector *col = nil;
    {
      IOSObjectArray *a__ = collectors;
      OrgApacheLuceneSearchCollector * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchCollector *c = *b__++;
        if (c != nil) {
          col = c;
          break;
        }
      }
    }
    return col;
  }
  else if (n == ((IOSObjectArray *) nil_chk(collectors))->size_) {
    return new_OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(collectors);
  }
  else {
    IOSObjectArray *colls = [IOSObjectArray newArrayWithLength:n type:OrgApacheLuceneSearchCollector_class_()];
    n = 0;
    {
      IOSObjectArray *a__ = collectors;
      OrgApacheLuceneSearchCollector * const *b__ = a__->buffer_;
      OrgApacheLuceneSearchCollector * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        OrgApacheLuceneSearchCollector *c = *b__++;
        if (c != nil) {
          (void) IOSObjectArray_Set(colls, n++, c);
        }
      }
    }
    return new_OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(colls);
  }
}

void OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(OrgApacheLuceneSearchMultiCollector *self, IOSObjectArray *collectors) {
  OrgApacheLuceneSearchCollector_init(self);
  self->collectors_ = collectors;
}

OrgApacheLuceneSearchMultiCollector *new_OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(IOSObjectArray *collectors) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchMultiCollector, initWithOrgApacheLuceneSearchCollectorArray_, collectors)
}

OrgApacheLuceneSearchMultiCollector *create_OrgApacheLuceneSearchMultiCollector_initWithOrgApacheLuceneSearchCollectorArray_(IOSObjectArray *collectors) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchMultiCollector, initWithOrgApacheLuceneSearchCollectorArray_, collectors)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchMultiCollector)

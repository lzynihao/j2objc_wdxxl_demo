//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/AbstractAllTermDocs.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/AbstractAllTermDocs.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermEnum.h"

@implementation OrgApacheLuceneIndexAbstractAllTermDocs

- (instancetype)initWithInt:(jint)maxDoc {
  OrgApacheLuceneIndexAbstractAllTermDocs_initWithInt_(self, maxDoc);
  return self;
}

- (void)seekWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  if (term == nil) {
    doc_ = -1;
  }
  else {
    @throw new_JavaLangUnsupportedOperationException_init();
  }
}

- (void)seekWithOrgApacheLuceneIndexTermEnum:(OrgApacheLuceneIndexTermEnum *)termEnum {
  @throw new_JavaLangUnsupportedOperationException_init();
}

- (jint)doc {
  return doc_;
}

- (jint)freq {
  return 1;
}

- (jboolean)next {
  return [self skipToWithInt:doc_ + 1];
}

- (jint)readWithIntArray:(IOSIntArray *)docs
            withIntArray:(IOSIntArray *)freqs {
  jint length = ((IOSIntArray *) nil_chk(docs))->size_;
  jint i = 0;
  while (i < length && doc_ < maxDoc_) {
    if (![self isDeletedWithInt:doc_]) {
      *IOSIntArray_GetRef(docs, i) = doc_;
      *IOSIntArray_GetRef(nil_chk(freqs), i) = 1;
      ++i;
    }
    doc_++;
  }
  return i;
}

- (jboolean)skipToWithInt:(jint)target {
  doc_ = target;
  while (doc_ < maxDoc_) {
    if (![self isDeletedWithInt:doc_]) {
      return true;
    }
    doc_++;
  }
  return false;
}

- (void)close {
}

- (jboolean)isDeletedWithInt:(jint)doc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 0, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "Z", 0x401, 8, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(seekWithOrgApacheLuceneIndexTerm:);
  methods[2].selector = @selector(seekWithOrgApacheLuceneIndexTermEnum:);
  methods[3].selector = @selector(doc);
  methods[4].selector = @selector(freq);
  methods[5].selector = @selector(next);
  methods[6].selector = @selector(readWithIntArray:withIntArray:);
  methods[7].selector = @selector(skipToWithInt:);
  methods[8].selector = @selector(close);
  methods[9].selector = @selector(isDeletedWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxDoc_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "seek", "LOrgApacheLuceneIndexTerm;", "LJavaIoIOException;", "LOrgApacheLuceneIndexTermEnum;", "read", "[I[I", "skipTo", "isDeleted" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexAbstractAllTermDocs = { "AbstractAllTermDocs", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x401, 10, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexAbstractAllTermDocs;
}

@end

void OrgApacheLuceneIndexAbstractAllTermDocs_initWithInt_(OrgApacheLuceneIndexAbstractAllTermDocs *self, jint maxDoc) {
  NSObject_init(self);
  self->doc_ = -1;
  self->maxDoc_ = maxDoc;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexAbstractAllTermDocs)

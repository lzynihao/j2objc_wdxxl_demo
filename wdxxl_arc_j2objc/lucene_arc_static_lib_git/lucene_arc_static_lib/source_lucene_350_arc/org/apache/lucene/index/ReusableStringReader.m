//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/ReusableStringReader.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "org/apache/lucene/index/ReusableStringReader.h"

@implementation OrgApacheLuceneIndexReusableStringReader

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexReusableStringReader_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)init__WithNSString:(NSString *)s {
  self->s_ = s;
  left_ = [((NSString *) nil_chk(s)) java_length];
  self->upto_ = 0;
}

- (jint)readWithCharArray:(IOSCharArray *)c {
  return [self readWithCharArray:c withInt:0 withInt:((IOSCharArray *) nil_chk(c))->size_];
}

- (jint)readWithCharArray:(IOSCharArray *)c
                  withInt:(jint)off
                  withInt:(jint)len {
  if (left_ > len) {
    [((NSString *) nil_chk(s_)) java_getChars:upto_ sourceEnd:upto_ + len destination:c destinationBegin:off];
    upto_ += len;
    left_ -= len;
    return len;
  }
  else if (0 == left_) {
    s_ = nil;
    return -1;
  }
  else {
    [((NSString *) nil_chk(s_)) java_getChars:upto_ sourceEnd:upto_ + left_ destination:c destinationBegin:off];
    jint r = left_;
    left_ = 0;
    upto_ = [((NSString *) nil_chk(s_)) java_length];
    return r;
  }
}

- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(init__WithNSString:);
  methods[2].selector = @selector(readWithCharArray:);
  methods[3].selector = @selector(readWithCharArray:withInt:withInt:);
  methods[4].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "upto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "left_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "s_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "init", "LNSString;", "read", "[C", "[CII" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexReusableStringReader = { "ReusableStringReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 5, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexReusableStringReader;
}

@end

void OrgApacheLuceneIndexReusableStringReader_init(OrgApacheLuceneIndexReusableStringReader *self) {
  JavaIoReader_init(self);
}

OrgApacheLuceneIndexReusableStringReader *new_OrgApacheLuceneIndexReusableStringReader_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexReusableStringReader, init)
}

OrgApacheLuceneIndexReusableStringReader *create_OrgApacheLuceneIndexReusableStringReader_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexReusableStringReader, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexReusableStringReader)
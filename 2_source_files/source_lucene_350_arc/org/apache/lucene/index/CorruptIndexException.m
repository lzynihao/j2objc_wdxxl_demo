//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/CorruptIndexException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/CorruptIndexException.h"

@implementation OrgApacheLuceneIndexCorruptIndexException

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(self, message);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCorruptIndexException = { "CorruptIndexException", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexCorruptIndexException;
}

@end

void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message) {
  JavaIoIOException_initWithNSString_(self, message);
}

OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(NSString *message) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_, message)
}

OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(NSString *message) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCorruptIndexException, initWithNSString_, message)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCorruptIndexException)

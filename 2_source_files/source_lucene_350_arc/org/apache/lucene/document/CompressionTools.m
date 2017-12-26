//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/document/CompressionTools.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/util/zip/Deflater.h"
#include "java/util/zip/Inflater.h"
#include "org/apache/lucene/document/CompressionTools.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

@interface OrgApacheLuceneDocumentCompressionTools ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneDocumentCompressionTools_init(OrgApacheLuceneDocumentCompressionTools *self);

__attribute__((unused)) static OrgApacheLuceneDocumentCompressionTools *new_OrgApacheLuceneDocumentCompressionTools_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneDocumentCompressionTools *create_OrgApacheLuceneDocumentCompressionTools_init();

@implementation OrgApacheLuceneDocumentCompressionTools

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneDocumentCompressionTools_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSByteArray *)compressWithByteArray:(IOSByteArray *)value
                                withInt:(jint)offset
                                withInt:(jint)length
                                withInt:(jint)compressionLevel {
  return OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_withInt_(value, offset, length, compressionLevel);
}

+ (IOSByteArray *)compressWithByteArray:(IOSByteArray *)value
                                withInt:(jint)offset
                                withInt:(jint)length {
  return OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_(value, offset, length);
}

+ (IOSByteArray *)compressWithByteArray:(IOSByteArray *)value {
  return OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_(value);
}

+ (IOSByteArray *)compressStringWithNSString:(NSString *)value {
  return OrgApacheLuceneDocumentCompressionTools_compressStringWithNSString_(value);
}

+ (IOSByteArray *)compressStringWithNSString:(NSString *)value
                                     withInt:(jint)compressionLevel {
  return OrgApacheLuceneDocumentCompressionTools_compressStringWithNSString_withInt_(value, compressionLevel);
}

+ (IOSByteArray *)decompressWithByteArray:(IOSByteArray *)value {
  return OrgApacheLuceneDocumentCompressionTools_decompressWithByteArray_(value);
}

+ (NSString *)decompressStringWithByteArray:(IOSByteArray *)value {
  return OrgApacheLuceneDocumentCompressionTools_decompressStringWithByteArray_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 0, 3, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 4, 5, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 4, 6, -1, -1, -1, -1 },
    { NULL, "[B", 0x9, 7, 3, 8, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 9, 3, 8, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compressWithByteArray:withInt:withInt:withInt:);
  methods[2].selector = @selector(compressWithByteArray:withInt:withInt:);
  methods[3].selector = @selector(compressWithByteArray:);
  methods[4].selector = @selector(compressStringWithNSString:);
  methods[5].selector = @selector(compressStringWithNSString:withInt:);
  methods[6].selector = @selector(decompressWithByteArray:);
  methods[7].selector = @selector(decompressStringWithByteArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compress", "[BIII", "[BII", "[B", "compressString", "LNSString;", "LNSString;I", "decompress", "LJavaUtilZipDataFormatException;", "decompressString" };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentCompressionTools = { "CompressionTools", "org.apache.lucene.document", ptrTable, methods, NULL, 7, 0x1, 8, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentCompressionTools;
}

@end

void OrgApacheLuceneDocumentCompressionTools_init(OrgApacheLuceneDocumentCompressionTools *self) {
  NSObject_init(self);
}

OrgApacheLuceneDocumentCompressionTools *new_OrgApacheLuceneDocumentCompressionTools_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentCompressionTools, init)
}

OrgApacheLuceneDocumentCompressionTools *create_OrgApacheLuceneDocumentCompressionTools_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentCompressionTools, init)
}

IOSByteArray *OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_withInt_(IOSByteArray *value, jint offset, jint length, jint compressionLevel) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  JavaIoByteArrayOutputStream *bos = new_JavaIoByteArrayOutputStream_initWithInt_(length);
  JavaUtilZipDeflater *compressor = new_JavaUtilZipDeflater_init();
  @try {
    [compressor setLevelWithInt:compressionLevel];
    [compressor setInputWithByteArray:value withInt:offset withInt:length];
    [compressor finish];
    IOSByteArray *buf = [IOSByteArray newArrayWithLength:1024];
    while (![compressor finished]) {
      jint count = [compressor deflateWithByteArray:buf];
      [bos writeWithByteArray:buf withInt:0 withInt:count];
    }
  }
  @finally {
    [compressor end];
  }
  return [bos toByteArray];
}

IOSByteArray *OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_(IOSByteArray *value, jint offset, jint length) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  return OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_withInt_(value, offset, length, JavaUtilZipDeflater_BEST_COMPRESSION);
}

IOSByteArray *OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_(IOSByteArray *value) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  return OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_withInt_(value, 0, ((IOSByteArray *) nil_chk(value))->size_, JavaUtilZipDeflater_BEST_COMPRESSION);
}

IOSByteArray *OrgApacheLuceneDocumentCompressionTools_compressStringWithNSString_(NSString *value) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  return OrgApacheLuceneDocumentCompressionTools_compressStringWithNSString_withInt_(value, JavaUtilZipDeflater_BEST_COMPRESSION);
}

IOSByteArray *OrgApacheLuceneDocumentCompressionTools_compressStringWithNSString_withInt_(NSString *value, jint compressionLevel) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  OrgApacheLuceneUtilUnicodeUtil_UTF8Result *result = new_OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init();
  OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithNSString_withInt_withInt_withOrgApacheLuceneUtilUnicodeUtil_UTF8Result_(value, 0, [((NSString *) nil_chk(value)) java_length], result);
  return OrgApacheLuceneDocumentCompressionTools_compressWithByteArray_withInt_withInt_withInt_(result->result_, 0, result->length_, compressionLevel);
}

IOSByteArray *OrgApacheLuceneDocumentCompressionTools_decompressWithByteArray_(IOSByteArray *value) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  JavaIoByteArrayOutputStream *bos = new_JavaIoByteArrayOutputStream_initWithInt_(((IOSByteArray *) nil_chk(value))->size_);
  JavaUtilZipInflater *decompressor = new_JavaUtilZipInflater_init();
  @try {
    [decompressor setInputWithByteArray:value];
    IOSByteArray *buf = [IOSByteArray newArrayWithLength:1024];
    while (![decompressor finished]) {
      jint count = [decompressor inflateWithByteArray:buf];
      [bos writeWithByteArray:buf withInt:0 withInt:count];
    }
  }
  @finally {
    [decompressor end];
  }
  return [bos toByteArray];
}

NSString *OrgApacheLuceneDocumentCompressionTools_decompressStringWithByteArray_(IOSByteArray *value) {
  OrgApacheLuceneDocumentCompressionTools_initialize();
  OrgApacheLuceneUtilUnicodeUtil_UTF16Result *result = new_OrgApacheLuceneUtilUnicodeUtil_UTF16Result_init();
  IOSByteArray *bytes = OrgApacheLuceneDocumentCompressionTools_decompressWithByteArray_(value);
  OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withOrgApacheLuceneUtilUnicodeUtil_UTF16Result_(bytes, 0, ((IOSByteArray *) nil_chk(bytes))->size_, result);
  return [NSString java_stringWithCharacters:result->result_ offset:0 length:result->length_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentCompressionTools)
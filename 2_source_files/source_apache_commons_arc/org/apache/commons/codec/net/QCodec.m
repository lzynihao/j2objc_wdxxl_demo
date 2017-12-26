//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/net/QCodec.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/nio/charset/Charset.h"
#include "java/util/BitSet.h"
#include "org/apache/commons/codec/Charsets.h"
#include "org/apache/commons/codec/DecoderException.h"
#include "org/apache/commons/codec/EncoderException.h"
#include "org/apache/commons/codec/net/QCodec.h"
#include "org/apache/commons/codec/net/QuotedPrintableCodec.h"
#include "org/apache/commons/codec/net/RFC1522Codec.h"

@interface OrgApacheCommonsCodecNetQCodec () {
 @public
  JavaNioCharsetCharset *charset_;
  jboolean encodeBlanks_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsCodecNetQCodec, charset_, JavaNioCharsetCharset *)

inline JavaUtilBitSet *OrgApacheCommonsCodecNetQCodec_get_PRINTABLE_CHARS();
static JavaUtilBitSet *OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecNetQCodec, PRINTABLE_CHARS, JavaUtilBitSet *)

inline jbyte OrgApacheCommonsCodecNetQCodec_get_BLANK();
#define OrgApacheCommonsCodecNetQCodec_BLANK 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecNetQCodec, BLANK, jbyte)

inline jbyte OrgApacheCommonsCodecNetQCodec_get_UNDERSCORE();
#define OrgApacheCommonsCodecNetQCodec_UNDERSCORE 95
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecNetQCodec, UNDERSCORE, jbyte)

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsCodecNetQCodec)

@implementation OrgApacheCommonsCodecNetQCodec

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecNetQCodec_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  OrgApacheCommonsCodecNetQCodec_initWithJavaNioCharsetCharset_(self, charset);
  return self;
}

- (instancetype)initWithNSString:(NSString *)charsetName {
  OrgApacheCommonsCodecNetQCodec_initWithNSString_(self, charsetName);
  return self;
}

- (NSString *)getEncoding {
  return @"Q";
}

- (IOSByteArray *)doEncodingWithByteArray:(IOSByteArray *)bytes {
  if (bytes == nil) {
    return nil;
  }
  IOSByteArray *data = OrgApacheCommonsCodecNetQuotedPrintableCodec_encodeQuotedPrintableWithJavaUtilBitSet_withByteArray_(OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS, bytes);
  if (self->encodeBlanks_) {
    for (jint i = 0; i < ((IOSByteArray *) nil_chk(data))->size_; i++) {
      if (IOSByteArray_Get(data, i) == OrgApacheCommonsCodecNetQCodec_BLANK) {
        *IOSByteArray_GetRef(data, i) = OrgApacheCommonsCodecNetQCodec_UNDERSCORE;
      }
    }
  }
  return data;
}

- (IOSByteArray *)doDecodingWithByteArray:(IOSByteArray *)bytes {
  if (bytes == nil) {
    return nil;
  }
  jboolean hasUnderscores = false;
  {
    IOSByteArray *a__ = bytes;
    jbyte const *b__ = a__->buffer_;
    jbyte const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jbyte b = *b__++;
      if (b == OrgApacheCommonsCodecNetQCodec_UNDERSCORE) {
        hasUnderscores = true;
        break;
      }
    }
  }
  if (hasUnderscores) {
    IOSByteArray *tmp = [IOSByteArray newArrayWithLength:bytes->size_];
    for (jint i = 0; i < bytes->size_; i++) {
      jbyte b = IOSByteArray_Get(bytes, i);
      if (b != OrgApacheCommonsCodecNetQCodec_UNDERSCORE) {
        *IOSByteArray_GetRef(tmp, i) = b;
      }
      else {
        *IOSByteArray_GetRef(tmp, i) = OrgApacheCommonsCodecNetQCodec_BLANK;
      }
    }
    return OrgApacheCommonsCodecNetQuotedPrintableCodec_decodeQuotedPrintableWithByteArray_(tmp);
  }
  return OrgApacheCommonsCodecNetQuotedPrintableCodec_decodeQuotedPrintableWithByteArray_(bytes);
}

- (NSString *)encodeWithNSString:(NSString *)str
       withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset {
  if (str == nil) {
    return nil;
  }
  return [self encodeTextWithNSString:str withJavaNioCharsetCharset:charset];
}

- (NSString *)encodeWithNSString:(NSString *)str
                    withNSString:(NSString *)charset {
  if (str == nil) {
    return nil;
  }
  @try {
    return [self encodeTextWithNSString:str withNSString:charset];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw new_OrgApacheCommonsCodecEncoderException_initWithNSString_withNSException_([e getMessage], e);
  }
}

- (NSString *)encodeWithNSString:(NSString *)str {
  if (str == nil) {
    return nil;
  }
  return [self encodeWithNSString:str withJavaNioCharsetCharset:[self getCharset]];
}

- (NSString *)decodeWithNSString:(NSString *)str {
  if (str == nil) {
    return nil;
  }
  @try {
    return [self decodeTextWithNSString:str];
  }
  @catch (JavaIoUnsupportedEncodingException *e) {
    @throw new_OrgApacheCommonsCodecDecoderException_initWithNSString_withNSException_([e getMessage], e);
  }
}

- (id)encodeWithId:(id)obj {
  if (obj == nil) {
    return nil;
  }
  else if ([obj isKindOfClass:[NSString class]]) {
    return [self encodeWithNSString:(NSString *) cast_chk(obj, [NSString class])];
  }
  else {
    @throw new_OrgApacheCommonsCodecEncoderException_initWithNSString_(JreStrcat("$$$", @"Objects of type ", [[obj java_getClass] getName], @" cannot be encoded using Q codec"));
  }
}

- (id)decodeWithId:(id)obj {
  if (obj == nil) {
    return nil;
  }
  else if ([obj isKindOfClass:[NSString class]]) {
    return [self decodeWithNSString:(NSString *) cast_chk(obj, [NSString class])];
  }
  else {
    @throw new_OrgApacheCommonsCodecDecoderException_initWithNSString_(JreStrcat("$$$", @"Objects of type ", [[obj java_getClass] getName], @" cannot be decoded using Q codec"));
  }
}

- (JavaNioCharsetCharset *)getCharset {
  return self->charset_;
}

- (NSString *)getDefaultCharset {
  return [((JavaNioCharsetCharset *) nil_chk(self->charset_)) name];
}

- (jboolean)isEncodeBlanks {
  return self->encodeBlanks_;
}

- (void)setEncodeBlanksWithBoolean:(jboolean)b {
  self->encodeBlanks_ = b;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 2, 3, -1, -1, -1, -1 },
    { NULL, "[B", 0x4, 4, 3, 5, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, 8, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 9, 8, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 1, 8, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 1, 5, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 6, 11, 8, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 11, 5, -1, -1, -1 },
    { NULL, "LJavaNioCharsetCharset;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithJavaNioCharsetCharset:);
  methods[2].selector = @selector(initWithNSString:);
  methods[3].selector = @selector(getEncoding);
  methods[4].selector = @selector(doEncodingWithByteArray:);
  methods[5].selector = @selector(doDecodingWithByteArray:);
  methods[6].selector = @selector(encodeWithNSString:withJavaNioCharsetCharset:);
  methods[7].selector = @selector(encodeWithNSString:withNSString:);
  methods[8].selector = @selector(encodeWithNSString:);
  methods[9].selector = @selector(decodeWithNSString:);
  methods[10].selector = @selector(encodeWithId:);
  methods[11].selector = @selector(decodeWithId:);
  methods[12].selector = @selector(getCharset);
  methods[13].selector = @selector(getDefaultCharset);
  methods[14].selector = @selector(isEncodeBlanks);
  methods[15].selector = @selector(setEncodeBlanksWithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "charset_", "LJavaNioCharsetCharset;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "PRINTABLE_CHARS", "LJavaUtilBitSet;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "BLANK", "B", .constantValue.asChar = OrgApacheCommonsCodecNetQCodec_BLANK, 0x1a, -1, -1, -1, -1 },
    { "UNDERSCORE", "B", .constantValue.asChar = OrgApacheCommonsCodecNetQCodec_UNDERSCORE, 0x1a, -1, -1, -1, -1 },
    { "encodeBlanks_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaNioCharsetCharset;", "LNSString;", "doEncoding", "[B", "doDecoding", "LOrgApacheCommonsCodecDecoderException;", "encode", "LNSString;LJavaNioCharsetCharset;", "LOrgApacheCommonsCodecEncoderException;", "LNSString;LNSString;", "decode", "LNSObject;", "setEncodeBlanks", "Z", &OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecNetQCodec = { "QCodec", "org.apache.commons.codec.net", ptrTable, methods, fields, 7, 0x1, 16, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecNetQCodec;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsCodecNetQCodec class]) {
    OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS = new_JavaUtilBitSet_initWithInt_(256);
    {
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:' '];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'!'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'"'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'#'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'$'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'%'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'&'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'\''];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'('];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:')'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'*'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'+'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:','];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'-'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'.'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'/'];
      for (jint i = '0'; i <= '9'; i++) {
        [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:i];
      }
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:':'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:';'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'<'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'>'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'@'];
      for (jint i = 'A'; i <= 'Z'; i++) {
        [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:i];
      }
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'['];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'\\'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:']'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'^'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'`'];
      for (jint i = 'a'; i <= 'z'; i++) {
        [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:i];
      }
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'{'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'|'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'}'];
      [OrgApacheCommonsCodecNetQCodec_PRINTABLE_CHARS setWithInt:'~'];
    }
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsCodecNetQCodec)
  }
}

@end

void OrgApacheCommonsCodecNetQCodec_init(OrgApacheCommonsCodecNetQCodec *self) {
  OrgApacheCommonsCodecNetQCodec_initWithJavaNioCharsetCharset_(self, JreLoadStatic(OrgApacheCommonsCodecCharsets, UTF_8));
}

OrgApacheCommonsCodecNetQCodec *new_OrgApacheCommonsCodecNetQCodec_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecNetQCodec, init)
}

OrgApacheCommonsCodecNetQCodec *create_OrgApacheCommonsCodecNetQCodec_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecNetQCodec, init)
}

void OrgApacheCommonsCodecNetQCodec_initWithJavaNioCharsetCharset_(OrgApacheCommonsCodecNetQCodec *self, JavaNioCharsetCharset *charset) {
  OrgApacheCommonsCodecNetRFC1522Codec_init(self);
  self->encodeBlanks_ = false;
  self->charset_ = charset;
}

OrgApacheCommonsCodecNetQCodec *new_OrgApacheCommonsCodecNetQCodec_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecNetQCodec, initWithJavaNioCharsetCharset_, charset)
}

OrgApacheCommonsCodecNetQCodec *create_OrgApacheCommonsCodecNetQCodec_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecNetQCodec, initWithJavaNioCharsetCharset_, charset)
}

void OrgApacheCommonsCodecNetQCodec_initWithNSString_(OrgApacheCommonsCodecNetQCodec *self, NSString *charsetName) {
  OrgApacheCommonsCodecNetQCodec_initWithJavaNioCharsetCharset_(self, JavaNioCharsetCharset_forNameWithNSString_(charsetName));
}

OrgApacheCommonsCodecNetQCodec *new_OrgApacheCommonsCodecNetQCodec_initWithNSString_(NSString *charsetName) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecNetQCodec, initWithNSString_, charsetName)
}

OrgApacheCommonsCodecNetQCodec *create_OrgApacheCommonsCodecNetQCodec_initWithNSString_(NSString *charsetName) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecNetQCodec, initWithNSString_, charsetName)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecNetQCodec)
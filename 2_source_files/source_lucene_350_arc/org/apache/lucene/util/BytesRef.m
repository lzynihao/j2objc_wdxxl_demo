//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/BytesRef.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/UnsupportedEncodingException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/UnicodeUtil.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneUtilBytesRef ()

- (jboolean)sliceEqualsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other
                                               withInt:(jint)pos;

@end

inline id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_get_utf8SortedAsUnicodeSortOrder();
static id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_utf8SortedAsUnicodeSortOrder;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilBytesRef, utf8SortedAsUnicodeSortOrder, id<JavaUtilComparator>)

inline id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_get_utf8SortedAsUTF16SortOrder();
static id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_utf8SortedAsUTF16SortOrder;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilBytesRef, utf8SortedAsUTF16SortOrder, id<JavaUtilComparator>)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilBytesRef_sliceEqualsWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *self, OrgApacheLuceneUtilBytesRef *other, jint pos);

@interface OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(OrgApacheLuceneUtilBytesRef *)a
               withId:(OrgApacheLuceneUtilBytesRef *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator)

__attribute__((unused)) static void OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator *self);

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator *new_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator *create_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator)

@interface OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(OrgApacheLuceneUtilBytesRef *)a
               withId:(OrgApacheLuceneUtilBytesRef *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator)

__attribute__((unused)) static void OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator *self);

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator *new_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator *create_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilBytesRef)

IOSByteArray *OrgApacheLuceneUtilBytesRef_EMPTY_BYTES;

@implementation OrgApacheLuceneUtilBytesRef

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBytesRef_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self, bytes, offset, length);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)bytes {
  OrgApacheLuceneUtilBytesRef_initWithByteArray_(self, bytes);
  return self;
}

- (instancetype)initWithInt:(jint)capacity {
  OrgApacheLuceneUtilBytesRef_initWithInt_(self, capacity);
  return self;
}

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(self, text);
  return self;
}

- (instancetype)initWithCharArray:(IOSCharArray *)text
                          withInt:(jint)offset
                          withInt:(jint)length {
  OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(self, text, offset, length);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other {
  OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(self, other);
  return self;
}

- (void)copy__WithJavaLangCharSequence:(id<JavaLangCharSequence>)text {
  OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withOrgApacheLuceneUtilBytesRef_(text, 0, [((id<JavaLangCharSequence>) nil_chk(text)) java_length], self);
}

- (void)copy__WithCharArray:(IOSCharArray *)text
                    withInt:(jint)offset
                    withInt:(jint)length {
  OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withOrgApacheLuceneUtilBytesRef_(text, offset, length, self);
}

- (jboolean)bytesEqualsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other {
  if (length_ == ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->length_) {
    jint otherUpto = other->offset_;
    IOSByteArray *otherBytes = other->bytes_;
    jint end = offset_ + length_;
    for (jint upto = offset_; upto < end; upto++, otherUpto++) {
      if (IOSByteArray_Get(nil_chk(bytes_), upto) != IOSByteArray_Get(nil_chk(otherBytes), otherUpto)) {
        return false;
      }
    }
    return true;
  }
  else {
    return false;
  }
}

- (id)java_clone {
  return new_OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(self);
}

- (jboolean)sliceEqualsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other
                                               withInt:(jint)pos {
  return OrgApacheLuceneUtilBytesRef_sliceEqualsWithOrgApacheLuceneUtilBytesRef_withInt_(self, other, pos);
}

- (jboolean)startsWithWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other {
  return OrgApacheLuceneUtilBytesRef_sliceEqualsWithOrgApacheLuceneUtilBytesRef_withInt_(self, other, 0);
}

- (jboolean)endsWithWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other {
  return OrgApacheLuceneUtilBytesRef_sliceEqualsWithOrgApacheLuceneUtilBytesRef_withInt_(self, other, length_ - ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->length_);
}

- (NSUInteger)hash {
  jint result = 0;
  jint end = offset_ + length_;
  for (jint i = offset_; i < end; i++) {
    result = OrgApacheLuceneUtilBytesRef_HASH_PRIME * result + IOSByteArray_Get(nil_chk(bytes_), i);
  }
  return result;
}

- (jboolean)isEqual:(id)other {
  if (other == nil) {
    return false;
  }
  return [self bytesEqualsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *) cast_chk(other, [OrgApacheLuceneUtilBytesRef class])];
}

- (NSString *)utf8ToString {
  @try {
    return [NSString java_stringWithBytes:bytes_ offset:offset_ length:length_ charsetName:@"UTF-8"];
  }
  @catch (JavaIoUnsupportedEncodingException *uee) {
    @throw new_JavaLangRuntimeException_initWithNSException_(uee);
  }
}

- (NSString *)description {
  JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
  (void) [sb appendWithChar:'['];
  jint end = offset_ + length_;
  for (jint i = offset_; i < end; i++) {
    if (i > offset_) {
      (void) [sb appendWithChar:' '];
    }
    (void) [sb appendWithNSString:JavaLangInteger_toHexStringWithInt_(IOSByteArray_Get(nil_chk(bytes_), i) & (jint) 0xff)];
  }
  (void) [sb appendWithChar:']'];
  return [sb description];
}

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other {
  if (((IOSByteArray *) nil_chk(bytes_))->size_ < ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->length_) {
    bytes_ = [IOSByteArray newArrayWithLength:other->length_];
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(other->bytes_, other->offset_, bytes_, 0, other->length_);
  length_ = other->length_;
  offset_ = 0;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other {
  jint newLen = length_ + ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->length_;
  if (((IOSByteArray *) nil_chk(bytes_))->size_ < newLen) {
    IOSByteArray *newBytes = [IOSByteArray newArrayWithLength:newLen];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(bytes_, offset_, newBytes, 0, length_);
    offset_ = 0;
    bytes_ = newBytes;
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(other->bytes_, other->offset_, bytes_, length_ + offset_, other->length_);
  length_ = newLen;
}

- (void)growWithInt:(jint)newLength {
  bytes_ = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(bytes_, newLength);
}

- (jint)compareToWithId:(OrgApacheLuceneUtilBytesRef *)other {
  (void) cast_chk(other, [OrgApacheLuceneUtilBytesRef class]);
  if (self == other) return 0;
  IOSByteArray *aBytes = self->bytes_;
  jint aUpto = self->offset_;
  IOSByteArray *bBytes = ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->bytes_;
  jint bUpto = other->offset_;
  jint aStop = aUpto + JavaLangMath_minWithInt_withInt_(self->length_, other->length_);
  while (aUpto < aStop) {
    jint aByte = IOSByteArray_Get(nil_chk(aBytes), aUpto++) & (jint) 0xff;
    jint bByte = IOSByteArray_Get(nil_chk(bBytes), bUpto++) & (jint) 0xff;
    jint diff = aByte - bByte;
    if (diff != 0) return diff;
  }
  return self->length_ - other->length_;
}

+ (id<JavaUtilComparator>)getUTF8SortedAsUnicodeComparator {
  return OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator();
}

+ (id<JavaUtilComparator>)getUTF8SortedAsUTF16Comparator {
  return OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUTF16Comparator();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 5, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 13, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 16, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 19, 5, -1, -1, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x9, -1, -1, -1, 20, -1, -1 },
    { NULL, "LJavaUtilComparator;", 0x9, -1, -1, -1, 20, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(initWithByteArray:);
  methods[3].selector = @selector(initWithInt:);
  methods[4].selector = @selector(initWithJavaLangCharSequence:);
  methods[5].selector = @selector(initWithCharArray:withInt:withInt:);
  methods[6].selector = @selector(initWithOrgApacheLuceneUtilBytesRef:);
  methods[7].selector = @selector(copy__WithJavaLangCharSequence:);
  methods[8].selector = @selector(copy__WithCharArray:withInt:withInt:);
  methods[9].selector = @selector(bytesEqualsWithOrgApacheLuceneUtilBytesRef:);
  methods[10].selector = @selector(java_clone);
  methods[11].selector = @selector(sliceEqualsWithOrgApacheLuceneUtilBytesRef:withInt:);
  methods[12].selector = @selector(startsWithWithOrgApacheLuceneUtilBytesRef:);
  methods[13].selector = @selector(endsWithWithOrgApacheLuceneUtilBytesRef:);
  methods[14].selector = @selector(hash);
  methods[15].selector = @selector(isEqual:);
  methods[16].selector = @selector(utf8ToString);
  methods[17].selector = @selector(description);
  methods[18].selector = @selector(copy__WithOrgApacheLuceneUtilBytesRef:);
  methods[19].selector = @selector(appendWithOrgApacheLuceneUtilBytesRef:);
  methods[20].selector = @selector(growWithInt:);
  methods[21].selector = @selector(compareToWithId:);
  methods[22].selector = @selector(getUTF8SortedAsUnicodeComparator);
  methods[23].selector = @selector(getUTF8SortedAsUTF16Comparator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "HASH_PRIME", "I", .constantValue.asInt = OrgApacheLuceneUtilBytesRef_HASH_PRIME, 0x18, -1, -1, -1, -1 },
    { "EMPTY_BYTES", "[B", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "bytes_", "[B", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "offset_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "length_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "utf8SortedAsUnicodeSortOrder", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x1a, -1, 22, 23, -1 },
    { "utf8SortedAsUTF16SortOrder", "LJavaUtilComparator;", .constantValue.asLong = 0, 0x1a, -1, 24, 23, -1 },
  };
  static const void *ptrTable[] = { "[BII", "[B", "I", "LJavaLangCharSequence;", "[CII", "LOrgApacheLuceneUtilBytesRef;", "copy", "bytesEquals", "clone", "sliceEquals", "LOrgApacheLuceneUtilBytesRef;I", "startsWith", "endsWith", "hashCode", "equals", "LNSObject;", "toString", "append", "grow", "compareTo", "()Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;", &OrgApacheLuceneUtilBytesRef_EMPTY_BYTES, &OrgApacheLuceneUtilBytesRef_utf8SortedAsUnicodeSortOrder, "Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;", &OrgApacheLuceneUtilBytesRef_utf8SortedAsUTF16SortOrder, "LOrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator;LOrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/util/BytesRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRef = { "BytesRef", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 24, 7, -1, 25, -1, 26, -1 };
  return &_OrgApacheLuceneUtilBytesRef;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilBytesRef class]) {
    OrgApacheLuceneUtilBytesRef_EMPTY_BYTES = [IOSByteArray newArrayWithLength:0];
    OrgApacheLuceneUtilBytesRef_utf8SortedAsUnicodeSortOrder = new_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init();
    OrgApacheLuceneUtilBytesRef_utf8SortedAsUTF16SortOrder = new_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init();
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilBytesRef)
  }
}

@end

void OrgApacheLuceneUtilBytesRef_init(OrgApacheLuceneUtilBytesRef *self) {
  NSObject_init(self);
  self->bytes_ = OrgApacheLuceneUtilBytesRef_EMPTY_BYTES;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, init)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, init)
}

void OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(OrgApacheLuceneUtilBytesRef *self, IOSByteArray *bytes, jint offset, jint length) {
  NSObject_init(self);
  JreAssert((bytes != nil), (@"org/apache/lucene/util/BytesRef.java:49 condition failed: assert bytes != null;"));
  self->bytes_ = bytes;
  self->offset_ = offset;
  self->length_ = length;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, initWithByteArray_withInt_withInt_, bytes, offset, length)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, initWithByteArray_withInt_withInt_, bytes, offset, length)
}

void OrgApacheLuceneUtilBytesRef_initWithByteArray_(OrgApacheLuceneUtilBytesRef *self, IOSByteArray *bytes) {
  NSObject_init(self);
  JreAssert((bytes != nil), (@"org/apache/lucene/util/BytesRef.java:58 condition failed: assert bytes != null;"));
  self->bytes_ = bytes;
  self->offset_ = 0;
  self->length_ = ((IOSByteArray *) nil_chk(bytes))->size_;
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(IOSByteArray *bytes) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, initWithByteArray_, bytes)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithByteArray_(IOSByteArray *bytes) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, initWithByteArray_, bytes)
}

void OrgApacheLuceneUtilBytesRef_initWithInt_(OrgApacheLuceneUtilBytesRef *self, jint capacity) {
  NSObject_init(self);
  self->bytes_ = [IOSByteArray newArrayWithLength:capacity];
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithInt_(jint capacity) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, initWithInt_, capacity)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithInt_(jint capacity) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, initWithInt_, capacity)
}

void OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(OrgApacheLuceneUtilBytesRef *self, id<JavaLangCharSequence> text) {
  OrgApacheLuceneUtilBytesRef_init(self);
  [self copy__WithJavaLangCharSequence:text];
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, initWithJavaLangCharSequence_, text)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, initWithJavaLangCharSequence_, text)
}

void OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(OrgApacheLuceneUtilBytesRef *self, IOSCharArray *text, jint offset, jint length) {
  OrgApacheLuceneUtilBytesRef_initWithInt_(self, length * 4);
  [self copy__WithCharArray:text withInt:offset withInt:length];
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(IOSCharArray *text, jint offset, jint length) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, initWithCharArray_withInt_withInt_, text, offset, length)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(IOSCharArray *text, jint offset, jint length) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, initWithCharArray_withInt_withInt_, text, offset, length)
}

void OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *self, OrgApacheLuceneUtilBytesRef *other) {
  OrgApacheLuceneUtilBytesRef_init(self);
  [self copy__WithOrgApacheLuceneUtilBytesRef:other];
}

OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *other) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef, initWithOrgApacheLuceneUtilBytesRef_, other)
}

OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *other) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef, initWithOrgApacheLuceneUtilBytesRef_, other)
}

jboolean OrgApacheLuceneUtilBytesRef_sliceEqualsWithOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUtilBytesRef *self, OrgApacheLuceneUtilBytesRef *other, jint pos) {
  if (pos < 0 || self->length_ - pos < ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->length_) {
    return false;
  }
  jint i = self->offset_ + pos;
  jint j = ((OrgApacheLuceneUtilBytesRef *) nil_chk(other))->offset_;
  jint k = other->offset_ + other->length_;
  while (j < k) {
    if (IOSByteArray_Get(nil_chk(self->bytes_), i++) != IOSByteArray_Get(other->bytes_, j++)) {
      return false;
    }
  }
  return true;
}

id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator() {
  OrgApacheLuceneUtilBytesRef_initialize();
  return OrgApacheLuceneUtilBytesRef_utf8SortedAsUnicodeSortOrder;
}

id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUTF16Comparator() {
  OrgApacheLuceneUtilBytesRef_initialize();
  return OrgApacheLuceneUtilBytesRef_utf8SortedAsUTF16SortOrder;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRef)

@implementation OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(OrgApacheLuceneUtilBytesRef *)a
               withId:(OrgApacheLuceneUtilBytesRef *)b {
  IOSByteArray *aBytes = ((OrgApacheLuceneUtilBytesRef *) nil_chk(a))->bytes_;
  jint aUpto = a->offset_;
  IOSByteArray *bBytes = ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->bytes_;
  jint bUpto = b->offset_;
  jint aStop;
  if (a->length_ < b->length_) {
    aStop = aUpto + a->length_;
  }
  else {
    aStop = aUpto + b->length_;
  }
  while (aUpto < aStop) {
    jint aByte = IOSByteArray_Get(nil_chk(aBytes), aUpto++) & (jint) 0xff;
    jint bByte = IOSByteArray_Get(nil_chk(bBytes), bUpto++) & (jint) 0xff;
    jint diff = aByte - bByte;
    if (diff != 0) {
      return diff;
    }
  }
  return a->length_ - b->length_;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;", "LOrgApacheLuceneUtilBytesRef;", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator = { "UTF8SortedAsUnicodeComparator", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0xa, 2, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator;
}

@end

void OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator *new_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator, init)
}

OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator *create_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUnicodeComparator)

@implementation OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(OrgApacheLuceneUtilBytesRef *)a
               withId:(OrgApacheLuceneUtilBytesRef *)b {
  IOSByteArray *aBytes = ((OrgApacheLuceneUtilBytesRef *) nil_chk(a))->bytes_;
  jint aUpto = a->offset_;
  IOSByteArray *bBytes = ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->bytes_;
  jint bUpto = b->offset_;
  jint aStop;
  if (a->length_ < b->length_) {
    aStop = aUpto + a->length_;
  }
  else {
    aStop = aUpto + b->length_;
  }
  while (aUpto < aStop) {
    jint aByte = IOSByteArray_Get(nil_chk(aBytes), aUpto++) & (jint) 0xff;
    jint bByte = IOSByteArray_Get(nil_chk(bBytes), bUpto++) & (jint) 0xff;
    if (aByte != bByte) {
      if (aByte >= (jint) 0xee && bByte >= (jint) 0xee) {
        if ((aByte & (jint) 0xfe) == (jint) 0xee) {
          aByte += (jint) 0xe;
        }
        if ((bByte & (jint) 0xfe) == (jint) 0xee) {
          bByte += (jint) 0xe;
        }
      }
      return aByte - bByte;
    }
  }
  return a->length_ - b->length_;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneUtilBytesRef;", "LOrgApacheLuceneUtilBytesRef;", "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator = { "UTF8SortedAsUTF16Comparator", "org.apache.lucene.util", ptrTable, methods, NULL, 7, 0xa, 2, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator;
}

@end

void OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator *new_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator, init)
}

OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator *create_OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilBytesRef_UTF8SortedAsUTF16Comparator)

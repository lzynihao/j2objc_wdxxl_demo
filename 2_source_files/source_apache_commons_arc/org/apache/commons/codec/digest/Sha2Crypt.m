//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/digest/Sha2Crypt.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/nio/charset/Charset.h"
#include "java/security/MessageDigest.h"
#include "java/util/Arrays.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/commons/codec/Charsets.h"
#include "org/apache/commons/codec/digest/B64.h"
#include "org/apache/commons/codec/digest/DigestUtils.h"
#include "org/apache/commons/codec/digest/MessageDigestAlgorithms.h"
#include "org/apache/commons/codec/digest/Sha2Crypt.h"

@interface OrgApacheCommonsCodecDigestSha2Crypt ()

+ (NSString *)sha2CryptWithByteArray:(IOSByteArray *)keyBytes
                        withNSString:(NSString *)salt
                        withNSString:(NSString *)saltPrefix
                             withInt:(jint)blocksize
                        withNSString:(NSString *)algorithm;

@end

inline jint OrgApacheCommonsCodecDigestSha2Crypt_get_ROUNDS_DEFAULT();
#define OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_DEFAULT 5000
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecDigestSha2Crypt, ROUNDS_DEFAULT, jint)

inline jint OrgApacheCommonsCodecDigestSha2Crypt_get_ROUNDS_MAX();
#define OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_MAX 999999999
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecDigestSha2Crypt, ROUNDS_MAX, jint)

inline jint OrgApacheCommonsCodecDigestSha2Crypt_get_ROUNDS_MIN();
#define OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_MIN 1000
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecDigestSha2Crypt, ROUNDS_MIN, jint)

inline NSString *OrgApacheCommonsCodecDigestSha2Crypt_get_ROUNDS_PREFIX();
static NSString *OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_PREFIX = @"rounds=";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecDigestSha2Crypt, ROUNDS_PREFIX, NSString *)

inline jint OrgApacheCommonsCodecDigestSha2Crypt_get_SHA256_BLOCKSIZE();
#define OrgApacheCommonsCodecDigestSha2Crypt_SHA256_BLOCKSIZE 32
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecDigestSha2Crypt, SHA256_BLOCKSIZE, jint)

inline jint OrgApacheCommonsCodecDigestSha2Crypt_get_SHA512_BLOCKSIZE();
#define OrgApacheCommonsCodecDigestSha2Crypt_SHA512_BLOCKSIZE 64
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsCodecDigestSha2Crypt, SHA512_BLOCKSIZE, jint)

inline JavaUtilRegexPattern *OrgApacheCommonsCodecDigestSha2Crypt_get_SALT_PATTERN();
static JavaUtilRegexPattern *OrgApacheCommonsCodecDigestSha2Crypt_SALT_PATTERN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheCommonsCodecDigestSha2Crypt, SALT_PATTERN, JavaUtilRegexPattern *)

__attribute__((unused)) static NSString *OrgApacheCommonsCodecDigestSha2Crypt_sha2CryptWithByteArray_withNSString_withNSString_withInt_withNSString_(IOSByteArray *keyBytes, NSString *salt, NSString *saltPrefix, jint blocksize, NSString *algorithm);

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsCodecDigestSha2Crypt)

NSString *OrgApacheCommonsCodecDigestSha2Crypt_SHA256_PREFIX = @"$5$";
NSString *OrgApacheCommonsCodecDigestSha2Crypt_SHA512_PREFIX = @"$6$";

@implementation OrgApacheCommonsCodecDigestSha2Crypt

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsCodecDigestSha2Crypt_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)sha256CryptWithByteArray:(IOSByteArray *)keyBytes {
  return OrgApacheCommonsCodecDigestSha2Crypt_sha256CryptWithByteArray_(keyBytes);
}

+ (NSString *)sha256CryptWithByteArray:(IOSByteArray *)keyBytes
                          withNSString:(NSString *)salt {
  return OrgApacheCommonsCodecDigestSha2Crypt_sha256CryptWithByteArray_withNSString_(keyBytes, salt);
}

+ (NSString *)sha2CryptWithByteArray:(IOSByteArray *)keyBytes
                        withNSString:(NSString *)salt
                        withNSString:(NSString *)saltPrefix
                             withInt:(jint)blocksize
                        withNSString:(NSString *)algorithm {
  return OrgApacheCommonsCodecDigestSha2Crypt_sha2CryptWithByteArray_withNSString_withNSString_withInt_withNSString_(keyBytes, salt, saltPrefix, blocksize, algorithm);
}

+ (NSString *)sha512CryptWithByteArray:(IOSByteArray *)keyBytes {
  return OrgApacheCommonsCodecDigestSha2Crypt_sha512CryptWithByteArray_(keyBytes);
}

+ (NSString *)sha512CryptWithByteArray:(IOSByteArray *)keyBytes
                          withNSString:(NSString *)salt {
  return OrgApacheCommonsCodecDigestSha2Crypt_sha512CryptWithByteArray_withNSString_(keyBytes, salt);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xa, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 5, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 5, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(sha256CryptWithByteArray:);
  methods[2].selector = @selector(sha256CryptWithByteArray:withNSString:);
  methods[3].selector = @selector(sha2CryptWithByteArray:withNSString:withNSString:withInt:withNSString:);
  methods[4].selector = @selector(sha512CryptWithByteArray:);
  methods[5].selector = @selector(sha512CryptWithByteArray:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ROUNDS_DEFAULT", "I", .constantValue.asInt = OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_DEFAULT, 0x1a, -1, -1, -1, -1 },
    { "ROUNDS_MAX", "I", .constantValue.asInt = OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_MAX, 0x1a, -1, -1, -1, -1 },
    { "ROUNDS_MIN", "I", .constantValue.asInt = OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_MIN, 0x1a, -1, -1, -1, -1 },
    { "ROUNDS_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 6, -1, -1 },
    { "SHA256_BLOCKSIZE", "I", .constantValue.asInt = OrgApacheCommonsCodecDigestSha2Crypt_SHA256_BLOCKSIZE, 0x1a, -1, -1, -1, -1 },
    { "SHA256_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
    { "SHA512_BLOCKSIZE", "I", .constantValue.asInt = OrgApacheCommonsCodecDigestSha2Crypt_SHA512_BLOCKSIZE, 0x1a, -1, -1, -1, -1 },
    { "SHA512_PREFIX", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 8, -1, -1 },
    { "SALT_PATTERN", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "sha256Crypt", "[B", "[BLNSString;", "sha2Crypt", "[BLNSString;LNSString;ILNSString;", "sha512Crypt", &OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_PREFIX, &OrgApacheCommonsCodecDigestSha2Crypt_SHA256_PREFIX, &OrgApacheCommonsCodecDigestSha2Crypt_SHA512_PREFIX, &OrgApacheCommonsCodecDigestSha2Crypt_SALT_PATTERN };
  static const J2ObjcClassInfo _OrgApacheCommonsCodecDigestSha2Crypt = { "Sha2Crypt", "org.apache.commons.codec.digest", ptrTable, methods, fields, 7, 0x1, 6, 9, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsCodecDigestSha2Crypt;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsCodecDigestSha2Crypt class]) {
    OrgApacheCommonsCodecDigestSha2Crypt_SALT_PATTERN = JavaUtilRegexPattern_compileWithNSString_(@"^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*");
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsCodecDigestSha2Crypt)
  }
}

@end

void OrgApacheCommonsCodecDigestSha2Crypt_init(OrgApacheCommonsCodecDigestSha2Crypt *self) {
  NSObject_init(self);
}

OrgApacheCommonsCodecDigestSha2Crypt *new_OrgApacheCommonsCodecDigestSha2Crypt_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsCodecDigestSha2Crypt, init)
}

OrgApacheCommonsCodecDigestSha2Crypt *create_OrgApacheCommonsCodecDigestSha2Crypt_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsCodecDigestSha2Crypt, init)
}

NSString *OrgApacheCommonsCodecDigestSha2Crypt_sha256CryptWithByteArray_(IOSByteArray *keyBytes) {
  OrgApacheCommonsCodecDigestSha2Crypt_initialize();
  return OrgApacheCommonsCodecDigestSha2Crypt_sha256CryptWithByteArray_withNSString_(keyBytes, nil);
}

NSString *OrgApacheCommonsCodecDigestSha2Crypt_sha256CryptWithByteArray_withNSString_(IOSByteArray *keyBytes, NSString *salt) {
  OrgApacheCommonsCodecDigestSha2Crypt_initialize();
  if (salt == nil) {
    salt = JreStrcat("$$", OrgApacheCommonsCodecDigestSha2Crypt_SHA256_PREFIX, OrgApacheCommonsCodecDigestB64_getRandomSaltWithInt_(8));
  }
  return OrgApacheCommonsCodecDigestSha2Crypt_sha2CryptWithByteArray_withNSString_withNSString_withInt_withNSString_(keyBytes, salt, OrgApacheCommonsCodecDigestSha2Crypt_SHA256_PREFIX, OrgApacheCommonsCodecDigestSha2Crypt_SHA256_BLOCKSIZE, OrgApacheCommonsCodecDigestMessageDigestAlgorithms_SHA_256);
}

NSString *OrgApacheCommonsCodecDigestSha2Crypt_sha2CryptWithByteArray_withNSString_withNSString_withInt_withNSString_(IOSByteArray *keyBytes, NSString *salt, NSString *saltPrefix, jint blocksize, NSString *algorithm) {
  OrgApacheCommonsCodecDigestSha2Crypt_initialize();
  jint keyLen = ((IOSByteArray *) nil_chk(keyBytes))->size_;
  jint rounds = OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_DEFAULT;
  jboolean roundsCustom = false;
  if (salt == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Salt must not be null");
  }
  JavaUtilRegexMatcher *m = [((JavaUtilRegexPattern *) nil_chk(OrgApacheCommonsCodecDigestSha2Crypt_SALT_PATTERN)) matcherWithJavaLangCharSequence:salt];
  if (m == nil || ![m find]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Invalid salt value: ", salt));
  }
  if ([m groupWithInt:3] != nil) {
    rounds = JavaLangInteger_parseIntWithNSString_([m groupWithInt:3]);
    rounds = JavaLangMath_maxWithInt_withInt_(OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_MIN, JavaLangMath_minWithInt_withInt_(OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_MAX, rounds));
    roundsCustom = true;
  }
  NSString *saltString = [m groupWithInt:4];
  IOSByteArray *saltBytes = [((NSString *) nil_chk(saltString)) java_getBytesWithCharset:JreLoadStatic(OrgApacheCommonsCodecCharsets, UTF_8)];
  jint saltLen = ((IOSByteArray *) nil_chk(saltBytes))->size_;
  JavaSecurityMessageDigest *ctx = OrgApacheCommonsCodecDigestDigestUtils_getDigestWithNSString_(algorithm);
  [((JavaSecurityMessageDigest *) nil_chk(ctx)) updateWithByteArray:keyBytes];
  [ctx updateWithByteArray:saltBytes];
  JavaSecurityMessageDigest *altCtx = OrgApacheCommonsCodecDigestDigestUtils_getDigestWithNSString_(algorithm);
  [((JavaSecurityMessageDigest *) nil_chk(altCtx)) updateWithByteArray:keyBytes];
  [altCtx updateWithByteArray:saltBytes];
  [altCtx updateWithByteArray:keyBytes];
  IOSByteArray *altResult = [altCtx digest];
  jint cnt = keyBytes->size_;
  while (cnt > blocksize) {
    [ctx updateWithByteArray:altResult withInt:0 withInt:blocksize];
    cnt -= blocksize;
  }
  [ctx updateWithByteArray:altResult withInt:0 withInt:cnt];
  cnt = keyBytes->size_;
  while (cnt > 0) {
    if ((cnt & 1) != 0) {
      [ctx updateWithByteArray:altResult withInt:0 withInt:blocksize];
    }
    else {
      [ctx updateWithByteArray:keyBytes];
    }
    JreRShiftAssignInt(&cnt, 1);
  }
  altResult = [ctx digest];
  altCtx = OrgApacheCommonsCodecDigestDigestUtils_getDigestWithNSString_(algorithm);
  for (jint i = 1; i <= keyLen; i++) {
    [((JavaSecurityMessageDigest *) nil_chk(altCtx)) updateWithByteArray:keyBytes];
  }
  IOSByteArray *tempResult = [((JavaSecurityMessageDigest *) nil_chk(altCtx)) digest];
  IOSByteArray *pBytes = [IOSByteArray newArrayWithLength:keyLen];
  jint cp = 0;
  while (cp < keyLen - blocksize) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tempResult, 0, pBytes, cp, blocksize);
    cp += blocksize;
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tempResult, 0, pBytes, cp, keyLen - cp);
  altCtx = OrgApacheCommonsCodecDigestDigestUtils_getDigestWithNSString_(algorithm);
  for (jint i = 1; i <= 16 + (IOSByteArray_Get(nil_chk(altResult), 0) & (jint) 0xff); i++) {
    [((JavaSecurityMessageDigest *) nil_chk(altCtx)) updateWithByteArray:saltBytes];
  }
  tempResult = [((JavaSecurityMessageDigest *) nil_chk(altCtx)) digest];
  IOSByteArray *sBytes = [IOSByteArray newArrayWithLength:saltLen];
  cp = 0;
  while (cp < saltLen - blocksize) {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tempResult, 0, sBytes, cp, blocksize);
    cp += blocksize;
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(tempResult, 0, sBytes, cp, saltLen - cp);
  for (jint i = 0; i <= rounds - 1; i++) {
    ctx = OrgApacheCommonsCodecDigestDigestUtils_getDigestWithNSString_(algorithm);
    if ((i & 1) != 0) {
      [((JavaSecurityMessageDigest *) nil_chk(ctx)) updateWithByteArray:pBytes withInt:0 withInt:keyLen];
    }
    else {
      [((JavaSecurityMessageDigest *) nil_chk(ctx)) updateWithByteArray:altResult withInt:0 withInt:blocksize];
    }
    if (i % 3 != 0) {
      [ctx updateWithByteArray:sBytes withInt:0 withInt:saltLen];
    }
    if (i % 7 != 0) {
      [ctx updateWithByteArray:pBytes withInt:0 withInt:keyLen];
    }
    if ((i & 1) != 0) {
      [ctx updateWithByteArray:altResult withInt:0 withInt:blocksize];
    }
    else {
      [ctx updateWithByteArray:pBytes withInt:0 withInt:keyLen];
    }
    altResult = [ctx digest];
  }
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_initWithNSString_(saltPrefix);
  if (roundsCustom) {
    (void) [buffer appendWithNSString:OrgApacheCommonsCodecDigestSha2Crypt_ROUNDS_PREFIX];
    (void) [buffer appendWithInt:rounds];
    (void) [buffer appendWithNSString:@"$"];
  }
  (void) [buffer appendWithNSString:saltString];
  (void) [buffer appendWithNSString:@"$"];
  if (blocksize == 32) {
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(nil_chk(altResult), 0), IOSByteArray_Get(altResult, 10), IOSByteArray_Get(altResult, 20), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 21), IOSByteArray_Get(altResult, 1), IOSByteArray_Get(altResult, 11), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 12), IOSByteArray_Get(altResult, 22), IOSByteArray_Get(altResult, 2), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 3), IOSByteArray_Get(altResult, 13), IOSByteArray_Get(altResult, 23), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 24), IOSByteArray_Get(altResult, 4), IOSByteArray_Get(altResult, 14), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 15), IOSByteArray_Get(altResult, 25), IOSByteArray_Get(altResult, 5), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 6), IOSByteArray_Get(altResult, 16), IOSByteArray_Get(altResult, 26), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 27), IOSByteArray_Get(altResult, 7), IOSByteArray_Get(altResult, 17), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 18), IOSByteArray_Get(altResult, 28), IOSByteArray_Get(altResult, 8), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 9), IOSByteArray_Get(altResult, 19), IOSByteArray_Get(altResult, 29), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_((jbyte) 0, IOSByteArray_Get(altResult, 31), IOSByteArray_Get(altResult, 30), 3, buffer);
  }
  else {
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(nil_chk(altResult), 0), IOSByteArray_Get(altResult, 21), IOSByteArray_Get(altResult, 42), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 22), IOSByteArray_Get(altResult, 43), IOSByteArray_Get(altResult, 1), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 44), IOSByteArray_Get(altResult, 2), IOSByteArray_Get(altResult, 23), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 3), IOSByteArray_Get(altResult, 24), IOSByteArray_Get(altResult, 45), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 25), IOSByteArray_Get(altResult, 46), IOSByteArray_Get(altResult, 4), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 47), IOSByteArray_Get(altResult, 5), IOSByteArray_Get(altResult, 26), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 6), IOSByteArray_Get(altResult, 27), IOSByteArray_Get(altResult, 48), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 28), IOSByteArray_Get(altResult, 49), IOSByteArray_Get(altResult, 7), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 50), IOSByteArray_Get(altResult, 8), IOSByteArray_Get(altResult, 29), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 9), IOSByteArray_Get(altResult, 30), IOSByteArray_Get(altResult, 51), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 31), IOSByteArray_Get(altResult, 52), IOSByteArray_Get(altResult, 10), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 53), IOSByteArray_Get(altResult, 11), IOSByteArray_Get(altResult, 32), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 12), IOSByteArray_Get(altResult, 33), IOSByteArray_Get(altResult, 54), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 34), IOSByteArray_Get(altResult, 55), IOSByteArray_Get(altResult, 13), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 56), IOSByteArray_Get(altResult, 14), IOSByteArray_Get(altResult, 35), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 15), IOSByteArray_Get(altResult, 36), IOSByteArray_Get(altResult, 57), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 37), IOSByteArray_Get(altResult, 58), IOSByteArray_Get(altResult, 16), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 59), IOSByteArray_Get(altResult, 17), IOSByteArray_Get(altResult, 38), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 18), IOSByteArray_Get(altResult, 39), IOSByteArray_Get(altResult, 60), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 40), IOSByteArray_Get(altResult, 61), IOSByteArray_Get(altResult, 19), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_(IOSByteArray_Get(altResult, 62), IOSByteArray_Get(altResult, 20), IOSByteArray_Get(altResult, 41), 4, buffer);
    OrgApacheCommonsCodecDigestB64_b64from24bitWithByte_withByte_withByte_withInt_withJavaLangStringBuilder_((jbyte) 0, (jbyte) 0, IOSByteArray_Get(altResult, 63), 2, buffer);
  }
  JavaUtilArrays_fillWithByteArray_withByte_(tempResult, (jbyte) 0);
  JavaUtilArrays_fillWithByteArray_withByte_(pBytes, (jbyte) 0);
  JavaUtilArrays_fillWithByteArray_withByte_(sBytes, (jbyte) 0);
  [ctx reset];
  [altCtx reset];
  JavaUtilArrays_fillWithByteArray_withByte_(keyBytes, (jbyte) 0);
  JavaUtilArrays_fillWithByteArray_withByte_(saltBytes, (jbyte) 0);
  return [buffer description];
}

NSString *OrgApacheCommonsCodecDigestSha2Crypt_sha512CryptWithByteArray_(IOSByteArray *keyBytes) {
  OrgApacheCommonsCodecDigestSha2Crypt_initialize();
  return OrgApacheCommonsCodecDigestSha2Crypt_sha512CryptWithByteArray_withNSString_(keyBytes, nil);
}

NSString *OrgApacheCommonsCodecDigestSha2Crypt_sha512CryptWithByteArray_withNSString_(IOSByteArray *keyBytes, NSString *salt) {
  OrgApacheCommonsCodecDigestSha2Crypt_initialize();
  if (salt == nil) {
    salt = JreStrcat("$$", OrgApacheCommonsCodecDigestSha2Crypt_SHA512_PREFIX, OrgApacheCommonsCodecDigestB64_getRandomSaltWithInt_(8));
  }
  return OrgApacheCommonsCodecDigestSha2Crypt_sha2CryptWithByteArray_withNSString_withNSString_withInt_withNSString_(keyBytes, salt, OrgApacheCommonsCodecDigestSha2Crypt_SHA512_PREFIX, OrgApacheCommonsCodecDigestSha2Crypt_SHA512_BLOCKSIZE, OrgApacheCommonsCodecDigestMessageDigestAlgorithms_SHA_512);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsCodecDigestSha2Crypt)

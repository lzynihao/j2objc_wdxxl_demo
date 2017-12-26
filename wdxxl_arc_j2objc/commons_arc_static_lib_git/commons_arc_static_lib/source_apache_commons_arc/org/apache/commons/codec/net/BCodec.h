//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-codec-1.10-sources.jar!org/apache/commons/codec/net/BCodec.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsCodecNetBCodec")
#ifdef RESTRICT_OrgApacheCommonsCodecNetBCodec
#define INCLUDE_ALL_OrgApacheCommonsCodecNetBCodec 0
#else
#define INCLUDE_ALL_OrgApacheCommonsCodecNetBCodec 1
#endif
#undef RESTRICT_OrgApacheCommonsCodecNetBCodec

#if !defined (OrgApacheCommonsCodecNetBCodec_) && (INCLUDE_ALL_OrgApacheCommonsCodecNetBCodec || defined(INCLUDE_OrgApacheCommonsCodecNetBCodec))
#define OrgApacheCommonsCodecNetBCodec_

#define RESTRICT_OrgApacheCommonsCodecNetRFC1522Codec 1
#define INCLUDE_OrgApacheCommonsCodecNetRFC1522Codec 1
#include "org/apache/commons/codec/net/RFC1522Codec.h"

#define RESTRICT_OrgApacheCommonsCodecStringEncoder 1
#define INCLUDE_OrgApacheCommonsCodecStringEncoder 1
#include "org/apache/commons/codec/StringEncoder.h"

#define RESTRICT_OrgApacheCommonsCodecStringDecoder 1
#define INCLUDE_OrgApacheCommonsCodecStringDecoder 1
#include "org/apache/commons/codec/StringDecoder.h"

@class IOSByteArray;
@class JavaNioCharsetCharset;

@interface OrgApacheCommonsCodecNetBCodec : OrgApacheCommonsCodecNetRFC1522Codec < OrgApacheCommonsCodecStringEncoder, OrgApacheCommonsCodecStringDecoder >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

- (instancetype)initWithNSString:(NSString *)charsetName;

- (id)decodeWithId:(id)value;

- (NSString *)decodeWithNSString:(NSString *)value;

- (id)encodeWithId:(id)value;

- (NSString *)encodeWithNSString:(NSString *)value;

- (NSString *)encodeWithNSString:(NSString *)value
       withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

- (NSString *)encodeWithNSString:(NSString *)value
                    withNSString:(NSString *)charset;

- (JavaNioCharsetCharset *)getCharset;

- (NSString *)getDefaultCharset;

#pragma mark Protected

- (IOSByteArray *)doDecodingWithByteArray:(IOSByteArray *)bytes;

- (IOSByteArray *)doEncodingWithByteArray:(IOSByteArray *)bytes;

- (NSString *)getEncoding;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsCodecNetBCodec)

FOUNDATION_EXPORT void OrgApacheCommonsCodecNetBCodec_init(OrgApacheCommonsCodecNetBCodec *self);

FOUNDATION_EXPORT OrgApacheCommonsCodecNetBCodec *new_OrgApacheCommonsCodecNetBCodec_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecNetBCodec *create_OrgApacheCommonsCodecNetBCodec_init(void);

FOUNDATION_EXPORT void OrgApacheCommonsCodecNetBCodec_initWithJavaNioCharsetCharset_(OrgApacheCommonsCodecNetBCodec *self, JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT OrgApacheCommonsCodecNetBCodec *new_OrgApacheCommonsCodecNetBCodec_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecNetBCodec *create_OrgApacheCommonsCodecNetBCodec_initWithJavaNioCharsetCharset_(JavaNioCharsetCharset *charset);

FOUNDATION_EXPORT void OrgApacheCommonsCodecNetBCodec_initWithNSString_(OrgApacheCommonsCodecNetBCodec *self, NSString *charsetName);

FOUNDATION_EXPORT OrgApacheCommonsCodecNetBCodec *new_OrgApacheCommonsCodecNetBCodec_initWithNSString_(NSString *charsetName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsCodecNetBCodec *create_OrgApacheCommonsCodecNetBCodec_initWithNSString_(NSString *charsetName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsCodecNetBCodec)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsCodecNetBCodec")

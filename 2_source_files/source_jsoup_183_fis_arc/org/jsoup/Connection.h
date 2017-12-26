//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/Connection.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupConnection")
#ifdef RESTRICT_OrgJsoupConnection
#define INCLUDE_ALL_OrgJsoupConnection 0
#else
#define INCLUDE_ALL_OrgJsoupConnection 1
#endif
#undef RESTRICT_OrgJsoupConnection
#ifdef INCLUDE_OrgJsoupConnection_Response
#define INCLUDE_OrgJsoupConnection_Base 1
#endif
#ifdef INCLUDE_OrgJsoupConnection_Request
#define INCLUDE_OrgJsoupConnection_Base 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgJsoupConnection_) && (INCLUDE_ALL_OrgJsoupConnection || defined(INCLUDE_OrgJsoupConnection))
#define OrgJsoupConnection_

@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaNetURL;
@class OrgJsoupConnection_Method;
@class OrgJsoupNodesDocument;
@class OrgJsoupParserParser;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;
@protocol OrgJsoupConnection_Request;
@protocol OrgJsoupConnection_Response;

@protocol OrgJsoupConnection < JavaObject >

- (id<OrgJsoupConnection>)urlWithJavaNetURL:(JavaNetURL *)url;

- (id<OrgJsoupConnection>)urlWithNSString:(NSString *)url;

- (id<OrgJsoupConnection>)userAgentWithNSString:(NSString *)userAgent;

- (id<OrgJsoupConnection>)timeoutWithInt:(jint)millis;

- (id<OrgJsoupConnection>)maxBodySizeWithInt:(jint)bytes;

- (id<OrgJsoupConnection>)referrerWithNSString:(NSString *)referrer;

- (id<OrgJsoupConnection>)followRedirectsWithBoolean:(jboolean)followRedirects;

- (id<OrgJsoupConnection>)methodWithOrgJsoupConnection_Method:(OrgJsoupConnection_Method *)method;

- (id<OrgJsoupConnection>)ignoreHttpErrorsWithBoolean:(jboolean)ignoreHttpErrors;

- (id<OrgJsoupConnection>)ignoreContentTypeWithBoolean:(jboolean)ignoreContentType;

- (id<OrgJsoupConnection>)validateTLSCertificatesWithBoolean:(jboolean)value;

- (id<OrgJsoupConnection>)dataWithNSString:(NSString *)key
                              withNSString:(NSString *)value;

- (id<OrgJsoupConnection>)dataWithNSString:(NSString *)key
                              withNSString:(NSString *)filename
                     withJavaIoInputStream:(JavaIoInputStream *)inputStream;

- (id<OrgJsoupConnection>)dataWithJavaUtilCollection:(id<JavaUtilCollection>)data;

- (id<OrgJsoupConnection>)dataWithJavaUtilMap:(id<JavaUtilMap>)data;

- (id<OrgJsoupConnection>)dataWithNSStringArray:(IOSObjectArray *)keyvals;

- (id<OrgJsoupConnection>)headerWithNSString:(NSString *)name
                                withNSString:(NSString *)value;

- (id<OrgJsoupConnection>)cookieWithNSString:(NSString *)name
                                withNSString:(NSString *)value;

- (id<OrgJsoupConnection>)cookiesWithJavaUtilMap:(id<JavaUtilMap>)cookies;

- (id<OrgJsoupConnection>)parserWithOrgJsoupParserParser:(OrgJsoupParserParser *)parser;

- (id<OrgJsoupConnection>)postDataCharsetWithNSString:(NSString *)charset;

- (OrgJsoupNodesDocument *)get;

- (OrgJsoupNodesDocument *)post;

- (id<OrgJsoupConnection_Response>)execute;

- (id<OrgJsoupConnection_Request>)request;

- (id<OrgJsoupConnection>)requestWithOrgJsoupConnection_Request:(id<OrgJsoupConnection_Request>)request;

- (id<OrgJsoupConnection_Response>)response;

- (id<OrgJsoupConnection>)responseWithOrgJsoupConnection_Response:(id<OrgJsoupConnection_Response>)response;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupConnection)

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupConnection)

#endif

#if !defined (OrgJsoupConnection_Method_) && (INCLUDE_ALL_OrgJsoupConnection || defined(INCLUDE_OrgJsoupConnection_Method))
#define OrgJsoupConnection_Method_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgJsoupConnection_Method_Enum) {
  OrgJsoupConnection_Method_Enum_GET = 0,
  OrgJsoupConnection_Method_Enum_POST = 1,
  OrgJsoupConnection_Method_Enum_PUT = 2,
  OrgJsoupConnection_Method_Enum_DELETE = 3,
  OrgJsoupConnection_Method_Enum_PATCH = 4,
};

@interface OrgJsoupConnection_Method : JavaLangEnum < NSCopying >

#pragma mark Public

- (jboolean)hasBody;

+ (OrgJsoupConnection_Method *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgJsoupConnection_Method)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgJsoupConnection_Method *OrgJsoupConnection_Method_values_[];

inline OrgJsoupConnection_Method *OrgJsoupConnection_Method_get_GET();
J2OBJC_ENUM_CONSTANT(OrgJsoupConnection_Method, GET)

inline OrgJsoupConnection_Method *OrgJsoupConnection_Method_get_POST();
J2OBJC_ENUM_CONSTANT(OrgJsoupConnection_Method, POST)

inline OrgJsoupConnection_Method *OrgJsoupConnection_Method_get_PUT();
J2OBJC_ENUM_CONSTANT(OrgJsoupConnection_Method, PUT)

inline OrgJsoupConnection_Method *OrgJsoupConnection_Method_get_DELETE();
J2OBJC_ENUM_CONSTANT(OrgJsoupConnection_Method, DELETE)

inline OrgJsoupConnection_Method *OrgJsoupConnection_Method_get_PATCH();
J2OBJC_ENUM_CONSTANT(OrgJsoupConnection_Method, PATCH)

FOUNDATION_EXPORT IOSObjectArray *OrgJsoupConnection_Method_values();

FOUNDATION_EXPORT OrgJsoupConnection_Method *OrgJsoupConnection_Method_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgJsoupConnection_Method *OrgJsoupConnection_Method_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupConnection_Method)

#endif

#if !defined (OrgJsoupConnection_Base_) && (INCLUDE_ALL_OrgJsoupConnection || defined(INCLUDE_OrgJsoupConnection_Base))
#define OrgJsoupConnection_Base_

@class JavaNetURL;
@class OrgJsoupConnection_Method;
@protocol JavaUtilMap;

@protocol OrgJsoupConnection_Base < JavaObject >

- (JavaNetURL *)url;

- (id<OrgJsoupConnection_Base>)urlWithJavaNetURL:(JavaNetURL *)url;

- (OrgJsoupConnection_Method *)method;

- (id<OrgJsoupConnection_Base>)methodWithOrgJsoupConnection_Method:(OrgJsoupConnection_Method *)method;

- (NSString *)headerWithNSString:(NSString *)name;

- (id<OrgJsoupConnection_Base>)headerWithNSString:(NSString *)name
                                     withNSString:(NSString *)value;

- (jboolean)hasHeaderWithNSString:(NSString *)name;

- (jboolean)hasHeaderWithValueWithNSString:(NSString *)name
                              withNSString:(NSString *)value;

- (id<OrgJsoupConnection_Base>)removeHeaderWithNSString:(NSString *)name;

- (id<JavaUtilMap>)headers;

- (NSString *)cookieWithNSString:(NSString *)name;

- (id<OrgJsoupConnection_Base>)cookieWithNSString:(NSString *)name
                                     withNSString:(NSString *)value;

- (jboolean)hasCookieWithNSString:(NSString *)name;

- (id<OrgJsoupConnection_Base>)removeCookieWithNSString:(NSString *)name;

- (id<JavaUtilMap>)cookies;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupConnection_Base)

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupConnection_Base)

#endif

#if !defined (OrgJsoupConnection_Request_) && (INCLUDE_ALL_OrgJsoupConnection || defined(INCLUDE_OrgJsoupConnection_Request))
#define OrgJsoupConnection_Request_

@class JavaNetURL;
@class OrgJsoupConnection_Method;
@class OrgJsoupParserParser;
@protocol JavaUtilCollection;
@protocol OrgJsoupConnection_KeyVal;

@protocol OrgJsoupConnection_Request < OrgJsoupConnection_Base, JavaObject >

- (jint)timeout;

- (id<OrgJsoupConnection_Request>)timeoutWithInt:(jint)millis;

- (jint)maxBodySize;

- (id<OrgJsoupConnection_Request>)maxBodySizeWithInt:(jint)bytes;

- (jboolean)followRedirects;

- (id<OrgJsoupConnection_Request>)followRedirectsWithBoolean:(jboolean)followRedirects;

- (jboolean)ignoreHttpErrors;

- (id<OrgJsoupConnection_Request>)ignoreHttpErrorsWithBoolean:(jboolean)ignoreHttpErrors;

- (jboolean)ignoreContentType;

- (id<OrgJsoupConnection_Request>)ignoreContentTypeWithBoolean:(jboolean)ignoreContentType;

- (jboolean)validateTLSCertificates;

- (void)validateTLSCertificatesWithBoolean:(jboolean)value;

- (id<OrgJsoupConnection_Request>)dataWithOrgJsoupConnection_KeyVal:(id<OrgJsoupConnection_KeyVal>)keyval;

- (id<JavaUtilCollection>)data;

- (id<OrgJsoupConnection_Request>)parserWithOrgJsoupParserParser:(OrgJsoupParserParser *)parser;

- (OrgJsoupParserParser *)parser;

- (id<OrgJsoupConnection_Request>)postDataCharsetWithNSString:(NSString *)charset;

- (NSString *)postDataCharset;

- (id<OrgJsoupConnection_Request>)urlWithJavaNetURL:(JavaNetURL *)arg0;

- (id<OrgJsoupConnection_Request>)methodWithOrgJsoupConnection_Method:(OrgJsoupConnection_Method *)arg0;

- (id<OrgJsoupConnection_Request>)headerWithNSString:(NSString *)arg0
                                        withNSString:(NSString *)arg1;

- (id<OrgJsoupConnection_Request>)removeCookieWithNSString:(NSString *)arg0;

- (id<OrgJsoupConnection_Request>)removeHeaderWithNSString:(NSString *)arg0;

- (id<OrgJsoupConnection_Request>)cookieWithNSString:(NSString *)arg0
                                        withNSString:(NSString *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupConnection_Request)

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupConnection_Request)

#endif

#if !defined (OrgJsoupConnection_Response_) && (INCLUDE_ALL_OrgJsoupConnection || defined(INCLUDE_OrgJsoupConnection_Response))
#define OrgJsoupConnection_Response_

@class IOSByteArray;
@class JavaNetURL;
@class OrgJsoupConnection_Method;
@class OrgJsoupNodesDocument;

@protocol OrgJsoupConnection_Response < OrgJsoupConnection_Base, JavaObject >

- (jint)statusCode;

- (NSString *)statusMessage;

- (NSString *)charset;

- (NSString *)contentType;

- (OrgJsoupNodesDocument *)parse;

- (NSString *)body;

- (IOSByteArray *)bodyAsBytes;

- (id<OrgJsoupConnection_Response>)urlWithJavaNetURL:(JavaNetURL *)arg0;

- (id<OrgJsoupConnection_Response>)methodWithOrgJsoupConnection_Method:(OrgJsoupConnection_Method *)arg0;

- (id<OrgJsoupConnection_Response>)headerWithNSString:(NSString *)arg0
                                         withNSString:(NSString *)arg1;

- (id<OrgJsoupConnection_Response>)removeCookieWithNSString:(NSString *)arg0;

- (id<OrgJsoupConnection_Response>)removeHeaderWithNSString:(NSString *)arg0;

- (id<OrgJsoupConnection_Response>)cookieWithNSString:(NSString *)arg0
                                         withNSString:(NSString *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupConnection_Response)

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupConnection_Response)

#endif

#if !defined (OrgJsoupConnection_KeyVal_) && (INCLUDE_ALL_OrgJsoupConnection || defined(INCLUDE_OrgJsoupConnection_KeyVal))
#define OrgJsoupConnection_KeyVal_

@class JavaIoInputStream;

@protocol OrgJsoupConnection_KeyVal < JavaObject >

- (id<OrgJsoupConnection_KeyVal>)keyWithNSString:(NSString *)key;

- (NSString *)key;

- (id<OrgJsoupConnection_KeyVal>)valueWithNSString:(NSString *)value;

- (NSString *)value;

- (id<OrgJsoupConnection_KeyVal>)inputStreamWithJavaIoInputStream:(JavaIoInputStream *)inputStream;

- (JavaIoInputStream *)inputStream;

- (jboolean)hasInputStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupConnection_KeyVal)

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupConnection_KeyVal)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgJsoupConnection")

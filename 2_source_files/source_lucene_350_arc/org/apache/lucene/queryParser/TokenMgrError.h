//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/queryParser/TokenMgrError.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserTokenMgrError")
#ifdef RESTRICT_OrgApacheLuceneQueryParserTokenMgrError
#define INCLUDE_ALL_OrgApacheLuceneQueryParserTokenMgrError 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryParserTokenMgrError 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryParserTokenMgrError

#if !defined (OrgApacheLuceneQueryParserTokenMgrError_) && (INCLUDE_ALL_OrgApacheLuceneQueryParserTokenMgrError || defined(INCLUDE_OrgApacheLuceneQueryParserTokenMgrError))
#define OrgApacheLuceneQueryParserTokenMgrError_

#define RESTRICT_JavaLangError 1
#define INCLUDE_JavaLangError 1
#include "java/lang/Error.h"

@interface OrgApacheLuceneQueryParserTokenMgrError : JavaLangError {
 @public
  jint errorCode_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBoolean:(jboolean)EOFSeen
                        withInt:(jint)lexState
                        withInt:(jint)errorLine
                        withInt:(jint)errorColumn
                   withNSString:(NSString *)errorAfter
                       withChar:(jchar)curChar
                        withInt:(jint)reason;

- (instancetype)initWithNSString:(NSString *)message
                         withInt:(jint)reason;

- (NSString *)getMessage;

#pragma mark Protected

+ (NSString *)addEscapesWithNSString:(NSString *)str;

+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryParserTokenMgrError)

inline jint OrgApacheLuceneQueryParserTokenMgrError_get_LEXICAL_ERROR();
#define OrgApacheLuceneQueryParserTokenMgrError_LEXICAL_ERROR 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryParserTokenMgrError, LEXICAL_ERROR, jint)

inline jint OrgApacheLuceneQueryParserTokenMgrError_get_STATIC_LEXER_ERROR();
#define OrgApacheLuceneQueryParserTokenMgrError_STATIC_LEXER_ERROR 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryParserTokenMgrError, STATIC_LEXER_ERROR, jint)

inline jint OrgApacheLuceneQueryParserTokenMgrError_get_INVALID_LEXICAL_STATE();
#define OrgApacheLuceneQueryParserTokenMgrError_INVALID_LEXICAL_STATE 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryParserTokenMgrError, INVALID_LEXICAL_STATE, jint)

inline jint OrgApacheLuceneQueryParserTokenMgrError_get_LOOP_DETECTED();
#define OrgApacheLuceneQueryParserTokenMgrError_LOOP_DETECTED 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryParserTokenMgrError, LOOP_DETECTED, jint)

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryParserTokenMgrError_addEscapesWithNSString_(NSString *str);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryParserTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserTokenMgrError_init(OrgApacheLuceneQueryParserTokenMgrError *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserTokenMgrError *new_OrgApacheLuceneQueryParserTokenMgrError_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserTokenMgrError *create_OrgApacheLuceneQueryParserTokenMgrError_init();

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserTokenMgrError_initWithNSString_withInt_(OrgApacheLuceneQueryParserTokenMgrError *self, NSString *message, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserTokenMgrError *new_OrgApacheLuceneQueryParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserTokenMgrError *create_OrgApacheLuceneQueryParserTokenMgrError_initWithNSString_withInt_(NSString *message, jint reason);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(OrgApacheLuceneQueryParserTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserTokenMgrError *new_OrgApacheLuceneQueryParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserTokenMgrError *create_OrgApacheLuceneQueryParserTokenMgrError_initWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryParserTokenMgrError)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserTokenMgrError")
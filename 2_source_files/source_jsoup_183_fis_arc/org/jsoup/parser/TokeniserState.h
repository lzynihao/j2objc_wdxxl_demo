//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/TokeniserState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupParserTokeniserState")
#ifdef RESTRICT_OrgJsoupParserTokeniserState
#define INCLUDE_ALL_OrgJsoupParserTokeniserState 0
#else
#define INCLUDE_ALL_OrgJsoupParserTokeniserState 1
#endif
#undef RESTRICT_OrgJsoupParserTokeniserState

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgJsoupParserTokeniserState_) && (INCLUDE_ALL_OrgJsoupParserTokeniserState || defined(INCLUDE_OrgJsoupParserTokeniserState))
#define OrgJsoupParserTokeniserState_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;
@class OrgJsoupParserCharacterReader;
@class OrgJsoupParserTokeniser;

typedef NS_ENUM(NSUInteger, OrgJsoupParserTokeniserState_Enum) {
  OrgJsoupParserTokeniserState_Enum_Data = 0,
  OrgJsoupParserTokeniserState_Enum_CharacterReferenceInData = 1,
  OrgJsoupParserTokeniserState_Enum_Rcdata = 2,
  OrgJsoupParserTokeniserState_Enum_CharacterReferenceInRcdata = 3,
  OrgJsoupParserTokeniserState_Enum_Rawtext = 4,
  OrgJsoupParserTokeniserState_Enum_ScriptData = 5,
  OrgJsoupParserTokeniserState_Enum_PLAINTEXT = 6,
  OrgJsoupParserTokeniserState_Enum_TagOpen = 7,
  OrgJsoupParserTokeniserState_Enum_EndTagOpen = 8,
  OrgJsoupParserTokeniserState_Enum_TagName = 9,
  OrgJsoupParserTokeniserState_Enum_RcdataLessthanSign = 10,
  OrgJsoupParserTokeniserState_Enum_RCDATAEndTagOpen = 11,
  OrgJsoupParserTokeniserState_Enum_RCDATAEndTagName = 12,
  OrgJsoupParserTokeniserState_Enum_RawtextLessthanSign = 13,
  OrgJsoupParserTokeniserState_Enum_RawtextEndTagOpen = 14,
  OrgJsoupParserTokeniserState_Enum_RawtextEndTagName = 15,
  OrgJsoupParserTokeniserState_Enum_ScriptDataLessthanSign = 16,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEndTagOpen = 17,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEndTagName = 18,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapeStart = 19,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapeStartDash = 20,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscaped = 21,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapedDash = 22,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapedDashDash = 23,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapedLessthanSign = 24,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapedEndTagOpen = 25,
  OrgJsoupParserTokeniserState_Enum_ScriptDataEscapedEndTagName = 26,
  OrgJsoupParserTokeniserState_Enum_ScriptDataDoubleEscapeStart = 27,
  OrgJsoupParserTokeniserState_Enum_ScriptDataDoubleEscaped = 28,
  OrgJsoupParserTokeniserState_Enum_ScriptDataDoubleEscapedDash = 29,
  OrgJsoupParserTokeniserState_Enum_ScriptDataDoubleEscapedDashDash = 30,
  OrgJsoupParserTokeniserState_Enum_ScriptDataDoubleEscapedLessthanSign = 31,
  OrgJsoupParserTokeniserState_Enum_ScriptDataDoubleEscapeEnd = 32,
  OrgJsoupParserTokeniserState_Enum_BeforeAttributeName = 33,
  OrgJsoupParserTokeniserState_Enum_AttributeName = 34,
  OrgJsoupParserTokeniserState_Enum_AfterAttributeName = 35,
  OrgJsoupParserTokeniserState_Enum_BeforeAttributeValue = 36,
  OrgJsoupParserTokeniserState_Enum_AttributeValue_doubleQuoted = 37,
  OrgJsoupParserTokeniserState_Enum_AttributeValue_singleQuoted = 38,
  OrgJsoupParserTokeniserState_Enum_AttributeValue_unquoted = 39,
  OrgJsoupParserTokeniserState_Enum_AfterAttributeValue_quoted = 40,
  OrgJsoupParserTokeniserState_Enum_SelfClosingStartTag = 41,
  OrgJsoupParserTokeniserState_Enum_BogusComment = 42,
  OrgJsoupParserTokeniserState_Enum_MarkupDeclarationOpen = 43,
  OrgJsoupParserTokeniserState_Enum_CommentStart = 44,
  OrgJsoupParserTokeniserState_Enum_CommentStartDash = 45,
  OrgJsoupParserTokeniserState_Enum_Comment = 46,
  OrgJsoupParserTokeniserState_Enum_CommentEndDash = 47,
  OrgJsoupParserTokeniserState_Enum_CommentEnd = 48,
  OrgJsoupParserTokeniserState_Enum_CommentEndBang = 49,
  OrgJsoupParserTokeniserState_Enum_Doctype = 50,
  OrgJsoupParserTokeniserState_Enum_BeforeDoctypeName = 51,
  OrgJsoupParserTokeniserState_Enum_DoctypeName = 52,
  OrgJsoupParserTokeniserState_Enum_AfterDoctypeName = 53,
  OrgJsoupParserTokeniserState_Enum_AfterDoctypePublicKeyword = 54,
  OrgJsoupParserTokeniserState_Enum_BeforeDoctypePublicIdentifier = 55,
  OrgJsoupParserTokeniserState_Enum_DoctypePublicIdentifier_doubleQuoted = 56,
  OrgJsoupParserTokeniserState_Enum_DoctypePublicIdentifier_singleQuoted = 57,
  OrgJsoupParserTokeniserState_Enum_AfterDoctypePublicIdentifier = 58,
  OrgJsoupParserTokeniserState_Enum_BetweenDoctypePublicAndSystemIdentifiers = 59,
  OrgJsoupParserTokeniserState_Enum_AfterDoctypeSystemKeyword = 60,
  OrgJsoupParserTokeniserState_Enum_BeforeDoctypeSystemIdentifier = 61,
  OrgJsoupParserTokeniserState_Enum_DoctypeSystemIdentifier_doubleQuoted = 62,
  OrgJsoupParserTokeniserState_Enum_DoctypeSystemIdentifier_singleQuoted = 63,
  OrgJsoupParserTokeniserState_Enum_AfterDoctypeSystemIdentifier = 64,
  OrgJsoupParserTokeniserState_Enum_BogusDoctype = 65,
  OrgJsoupParserTokeniserState_Enum_CdataSection = 66,
};

@interface OrgJsoupParserTokeniserState : JavaLangEnum < NSCopying >

#pragma mark Public

+ (OrgJsoupParserTokeniserState *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

#pragma mark Package-Private

- (void)readWithOrgJsoupParserTokeniser:(OrgJsoupParserTokeniser *)t
      withOrgJsoupParserCharacterReader:(OrgJsoupParserCharacterReader *)r;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgJsoupParserTokeniserState)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_values_[];

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_Data();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, Data)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CharacterReferenceInData();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CharacterReferenceInData)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_Rcdata();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, Rcdata)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CharacterReferenceInRcdata();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CharacterReferenceInRcdata)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_Rawtext();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, Rawtext)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptData();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptData)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_PLAINTEXT();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, PLAINTEXT)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_TagOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, TagOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_EndTagOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, EndTagOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_TagName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, TagName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_RcdataLessthanSign();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, RcdataLessthanSign)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_RCDATAEndTagOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, RCDATAEndTagOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_RCDATAEndTagName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, RCDATAEndTagName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_RawtextLessthanSign();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, RawtextLessthanSign)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_RawtextEndTagOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, RawtextEndTagOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_RawtextEndTagName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, RawtextEndTagName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataLessthanSign();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataLessthanSign)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEndTagOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEndTagOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEndTagName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEndTagName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapeStart();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapeStart)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapeStartDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapeStartDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscaped();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscaped)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapedDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapedDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapedDashDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapedDashDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapedLessthanSign();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapedLessthanSign)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapedEndTagOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapedEndTagOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataEscapedEndTagName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataEscapedEndTagName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataDoubleEscapeStart();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataDoubleEscapeStart)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataDoubleEscaped();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataDoubleEscaped)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataDoubleEscapedDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataDoubleEscapedDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataDoubleEscapedDashDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataDoubleEscapedDashDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataDoubleEscapedLessthanSign();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataDoubleEscapedLessthanSign)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_ScriptDataDoubleEscapeEnd();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, ScriptDataDoubleEscapeEnd)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BeforeAttributeName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BeforeAttributeName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AttributeName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AttributeName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterAttributeName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterAttributeName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BeforeAttributeValue();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BeforeAttributeValue)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AttributeValue_doubleQuoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AttributeValue_doubleQuoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AttributeValue_singleQuoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AttributeValue_singleQuoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AttributeValue_unquoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AttributeValue_unquoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterAttributeValue_quoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterAttributeValue_quoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_SelfClosingStartTag();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, SelfClosingStartTag)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BogusComment();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BogusComment)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_MarkupDeclarationOpen();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, MarkupDeclarationOpen)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CommentStart();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CommentStart)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CommentStartDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CommentStartDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_Comment();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, Comment)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CommentEndDash();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CommentEndDash)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CommentEnd();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CommentEnd)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CommentEndBang();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CommentEndBang)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_Doctype();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, Doctype)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BeforeDoctypeName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BeforeDoctypeName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_DoctypeName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, DoctypeName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterDoctypeName();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterDoctypeName)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterDoctypePublicKeyword();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterDoctypePublicKeyword)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BeforeDoctypePublicIdentifier();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BeforeDoctypePublicIdentifier)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_DoctypePublicIdentifier_doubleQuoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, DoctypePublicIdentifier_doubleQuoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_DoctypePublicIdentifier_singleQuoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, DoctypePublicIdentifier_singleQuoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterDoctypePublicIdentifier();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterDoctypePublicIdentifier)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BetweenDoctypePublicAndSystemIdentifiers();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BetweenDoctypePublicAndSystemIdentifiers)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterDoctypeSystemKeyword();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterDoctypeSystemKeyword)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BeforeDoctypeSystemIdentifier();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BeforeDoctypeSystemIdentifier)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_DoctypeSystemIdentifier_doubleQuoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, DoctypeSystemIdentifier_doubleQuoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_DoctypeSystemIdentifier_singleQuoted();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, DoctypeSystemIdentifier_singleQuoted)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_AfterDoctypeSystemIdentifier();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, AfterDoctypeSystemIdentifier)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_BogusDoctype();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, BogusDoctype)

inline OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_get_CdataSection();
J2OBJC_ENUM_CONSTANT(OrgJsoupParserTokeniserState, CdataSection)

inline jchar OrgJsoupParserTokeniserState_get_nullChar();
#define OrgJsoupParserTokeniserState_nullChar 0x0000
J2OBJC_STATIC_FIELD_CONSTANT(OrgJsoupParserTokeniserState, nullChar, jchar)

FOUNDATION_EXPORT IOSObjectArray *OrgJsoupParserTokeniserState_values();

FOUNDATION_EXPORT OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgJsoupParserTokeniserState *OrgJsoupParserTokeniserState_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupParserTokeniserState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgJsoupParserTokeniserState")

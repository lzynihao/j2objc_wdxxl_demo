//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/XmlTreeBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupParserXmlTreeBuilder")
#ifdef RESTRICT_OrgJsoupParserXmlTreeBuilder
#define INCLUDE_ALL_OrgJsoupParserXmlTreeBuilder 0
#else
#define INCLUDE_ALL_OrgJsoupParserXmlTreeBuilder 1
#endif
#undef RESTRICT_OrgJsoupParserXmlTreeBuilder

#if !defined (OrgJsoupParserXmlTreeBuilder_) && (INCLUDE_ALL_OrgJsoupParserXmlTreeBuilder || defined(INCLUDE_OrgJsoupParserXmlTreeBuilder))
#define OrgJsoupParserXmlTreeBuilder_

#define RESTRICT_OrgJsoupParserTreeBuilder 1
#define INCLUDE_OrgJsoupParserTreeBuilder 1
#include "org/jsoup/parser/TreeBuilder.h"

@class OrgJsoupNodesElement;
@class OrgJsoupParserParseErrorList;
@class OrgJsoupParserToken;
@class OrgJsoupParserToken_Character;
@class OrgJsoupParserToken_Comment;
@class OrgJsoupParserToken_Doctype;
@class OrgJsoupParserToken_StartTag;
@protocol JavaUtilList;

@interface OrgJsoupParserXmlTreeBuilder : OrgJsoupParserTreeBuilder

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (void)initialiseParseWithNSString:(NSString *)input
                       withNSString:(NSString *)baseUri
   withOrgJsoupParserParseErrorList:(OrgJsoupParserParseErrorList *)errors OBJC_METHOD_FAMILY_NONE;

- (jboolean)processWithOrgJsoupParserToken:(OrgJsoupParserToken *)token;

#pragma mark Package-Private

- (void)insertWithOrgJsoupParserToken_Character:(OrgJsoupParserToken_Character *)characterToken;

- (void)insertWithOrgJsoupParserToken_Comment:(OrgJsoupParserToken_Comment *)commentToken;

- (void)insertWithOrgJsoupParserToken_Doctype:(OrgJsoupParserToken_Doctype *)d;

- (OrgJsoupNodesElement *)insertWithOrgJsoupParserToken_StartTag:(OrgJsoupParserToken_StartTag *)startTag;

- (id<JavaUtilList>)parseFragmentWithNSString:(NSString *)inputFragment
                                 withNSString:(NSString *)baseUri
             withOrgJsoupParserParseErrorList:(OrgJsoupParserParseErrorList *)errors;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupParserXmlTreeBuilder)

FOUNDATION_EXPORT void OrgJsoupParserXmlTreeBuilder_init(OrgJsoupParserXmlTreeBuilder *self);

FOUNDATION_EXPORT OrgJsoupParserXmlTreeBuilder *new_OrgJsoupParserXmlTreeBuilder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupParserXmlTreeBuilder *create_OrgJsoupParserXmlTreeBuilder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupParserXmlTreeBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupParserXmlTreeBuilder")

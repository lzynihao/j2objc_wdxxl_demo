//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/examples/HtmlToPlainText.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupExamplesHtmlToPlainText")
#ifdef RESTRICT_OrgJsoupExamplesHtmlToPlainText
#define INCLUDE_ALL_OrgJsoupExamplesHtmlToPlainText 0
#else
#define INCLUDE_ALL_OrgJsoupExamplesHtmlToPlainText 1
#endif
#undef RESTRICT_OrgJsoupExamplesHtmlToPlainText

#if !defined (OrgJsoupExamplesHtmlToPlainText_) && (INCLUDE_ALL_OrgJsoupExamplesHtmlToPlainText || defined(INCLUDE_OrgJsoupExamplesHtmlToPlainText))
#define OrgJsoupExamplesHtmlToPlainText_

@class IOSObjectArray;
@class OrgJsoupNodesElement;

@interface OrgJsoupExamplesHtmlToPlainText : NSObject

#pragma mark Public

- (instancetype)init;

- (NSString *)getPlainTextWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)element;

+ (void)mainWithNSStringArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupExamplesHtmlToPlainText)

FOUNDATION_EXPORT void OrgJsoupExamplesHtmlToPlainText_init(OrgJsoupExamplesHtmlToPlainText *self);

FOUNDATION_EXPORT OrgJsoupExamplesHtmlToPlainText *new_OrgJsoupExamplesHtmlToPlainText_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupExamplesHtmlToPlainText *create_OrgJsoupExamplesHtmlToPlainText_init();

FOUNDATION_EXPORT void OrgJsoupExamplesHtmlToPlainText_mainWithNSStringArray_(IOSObjectArray *args);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupExamplesHtmlToPlainText)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupExamplesHtmlToPlainText")
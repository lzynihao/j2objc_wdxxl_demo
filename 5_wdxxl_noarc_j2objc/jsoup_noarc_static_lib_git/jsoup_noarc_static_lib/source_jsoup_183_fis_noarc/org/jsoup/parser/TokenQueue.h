//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/TokenQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupParserTokenQueue")
#ifdef RESTRICT_OrgJsoupParserTokenQueue
#define INCLUDE_ALL_OrgJsoupParserTokenQueue 0
#else
#define INCLUDE_ALL_OrgJsoupParserTokenQueue 1
#endif
#undef RESTRICT_OrgJsoupParserTokenQueue

#if !defined (OrgJsoupParserTokenQueue_) && (INCLUDE_ALL_OrgJsoupParserTokenQueue || defined(INCLUDE_OrgJsoupParserTokenQueue))
#define OrgJsoupParserTokenQueue_

@class IOSCharArray;
@class IOSObjectArray;
@class JavaLangCharacter;

@interface OrgJsoupParserTokenQueue : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)data;

- (void)addFirstWithJavaLangCharacter:(JavaLangCharacter *)c;

- (void)addFirstWithNSString:(NSString *)seq;

- (void)advance;

- (NSString *)chompBalancedWithChar:(jchar)open
                           withChar:(jchar)close;

- (NSString *)chompToWithNSString:(NSString *)seq;

- (NSString *)chompToIgnoreCaseWithNSString:(NSString *)seq;

- (jchar)consume;

- (void)consumeWithNSString:(NSString *)seq;

- (NSString *)consumeAttributeKey;

- (NSString *)consumeCssIdentifier;

- (NSString *)consumeElementSelector;

- (NSString *)consumeTagName;

- (NSString *)consumeToWithNSString:(NSString *)seq;

- (NSString *)consumeToAnyWithNSStringArray:(IOSObjectArray *)seq;

- (NSString *)consumeToIgnoreCaseWithNSString:(NSString *)seq;

- (jboolean)consumeWhitespace;

- (NSString *)consumeWord;

- (jboolean)isEmpty;

- (jboolean)matchChompWithNSString:(NSString *)seq;

- (jboolean)matchesWithNSString:(NSString *)seq;

- (jboolean)matchesAnyWithCharArray:(IOSCharArray *)seq;

- (jboolean)matchesAnyWithNSStringArray:(IOSObjectArray *)seq;

- (jboolean)matchesCSWithNSString:(NSString *)seq;

- (jboolean)matchesStartTag;

- (jboolean)matchesWhitespace;

- (jboolean)matchesWord;

- (jchar)peek;

- (NSString *)remainder;

- (NSString *)description;

+ (NSString *)unescapeWithNSString:(NSString *)inArg;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupParserTokenQueue)

FOUNDATION_EXPORT void OrgJsoupParserTokenQueue_initWithNSString_(OrgJsoupParserTokenQueue *self, NSString *data);

FOUNDATION_EXPORT OrgJsoupParserTokenQueue *new_OrgJsoupParserTokenQueue_initWithNSString_(NSString *data) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupParserTokenQueue *create_OrgJsoupParserTokenQueue_initWithNSString_(NSString *data);

FOUNDATION_EXPORT NSString *OrgJsoupParserTokenQueue_unescapeWithNSString_(NSString *inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupParserTokenQueue)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupParserTokenQueue")

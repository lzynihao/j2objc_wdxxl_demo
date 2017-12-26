//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/safety/Whitelist.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupSafetyWhitelist")
#ifdef RESTRICT_OrgJsoupSafetyWhitelist
#define INCLUDE_ALL_OrgJsoupSafetyWhitelist 0
#else
#define INCLUDE_ALL_OrgJsoupSafetyWhitelist 1
#endif
#undef RESTRICT_OrgJsoupSafetyWhitelist
#ifdef INCLUDE_OrgJsoupSafetyWhitelist_Protocol
#define INCLUDE_OrgJsoupSafetyWhitelist_TypedValue 1
#endif
#ifdef INCLUDE_OrgJsoupSafetyWhitelist_AttributeValue
#define INCLUDE_OrgJsoupSafetyWhitelist_TypedValue 1
#endif
#ifdef INCLUDE_OrgJsoupSafetyWhitelist_AttributeKey
#define INCLUDE_OrgJsoupSafetyWhitelist_TypedValue 1
#endif
#ifdef INCLUDE_OrgJsoupSafetyWhitelist_TagName
#define INCLUDE_OrgJsoupSafetyWhitelist_TypedValue 1
#endif

#if !defined (OrgJsoupSafetyWhitelist_) && (INCLUDE_ALL_OrgJsoupSafetyWhitelist || defined(INCLUDE_OrgJsoupSafetyWhitelist))
#define OrgJsoupSafetyWhitelist_

@class IOSObjectArray;
@class OrgJsoupNodesAttribute;
@class OrgJsoupNodesAttributes;
@class OrgJsoupNodesElement;

@interface OrgJsoupSafetyWhitelist : NSObject

#pragma mark Public

- (instancetype)init;

- (OrgJsoupSafetyWhitelist *)addAttributesWithNSString:(NSString *)tag
                                     withNSStringArray:(IOSObjectArray *)keys;

- (OrgJsoupSafetyWhitelist *)addEnforcedAttributeWithNSString:(NSString *)tag
                                                 withNSString:(NSString *)key
                                                 withNSString:(NSString *)value;

- (OrgJsoupSafetyWhitelist *)addProtocolsWithNSString:(NSString *)tag
                                         withNSString:(NSString *)key
                                    withNSStringArray:(IOSObjectArray *)protocols;

- (OrgJsoupSafetyWhitelist *)addTagsWithNSStringArray:(IOSObjectArray *)tags;

+ (OrgJsoupSafetyWhitelist *)basic;

+ (OrgJsoupSafetyWhitelist *)basicWithImages;

+ (OrgJsoupSafetyWhitelist *)none;

- (OrgJsoupSafetyWhitelist *)preserveRelativeLinksWithBoolean:(jboolean)preserve;

+ (OrgJsoupSafetyWhitelist *)relaxed;

- (OrgJsoupSafetyWhitelist *)removeAttributesWithNSString:(NSString *)tag
                                        withNSStringArray:(IOSObjectArray *)keys;

- (OrgJsoupSafetyWhitelist *)removeEnforcedAttributeWithNSString:(NSString *)tag
                                                    withNSString:(NSString *)key;

- (OrgJsoupSafetyWhitelist *)removeProtocolsWithNSString:(NSString *)tag
                                            withNSString:(NSString *)key
                                       withNSStringArray:(IOSObjectArray *)protocols;

- (OrgJsoupSafetyWhitelist *)removeTagsWithNSStringArray:(IOSObjectArray *)tags;

+ (OrgJsoupSafetyWhitelist *)simpleText;

#pragma mark Protected

- (jboolean)isSafeAttributeWithNSString:(NSString *)tagName
               withOrgJsoupNodesElement:(OrgJsoupNodesElement *)el
             withOrgJsoupNodesAttribute:(OrgJsoupNodesAttribute *)attr;

- (jboolean)isSafeTagWithNSString:(NSString *)tag;

#pragma mark Package-Private

- (OrgJsoupNodesAttributes *)getEnforcedAttributesWithNSString:(NSString *)tagName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyWhitelist)

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *OrgJsoupSafetyWhitelist_none();

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *OrgJsoupSafetyWhitelist_simpleText();

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *OrgJsoupSafetyWhitelist_basic();

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *OrgJsoupSafetyWhitelist_basicWithImages();

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *OrgJsoupSafetyWhitelist_relaxed();

FOUNDATION_EXPORT void OrgJsoupSafetyWhitelist_init(OrgJsoupSafetyWhitelist *self);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *new_OrgJsoupSafetyWhitelist_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist *create_OrgJsoupSafetyWhitelist_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyWhitelist)

#endif

#if !defined (OrgJsoupSafetyWhitelist_TypedValue_) && (INCLUDE_ALL_OrgJsoupSafetyWhitelist || defined(INCLUDE_OrgJsoupSafetyWhitelist_TypedValue))
#define OrgJsoupSafetyWhitelist_TypedValue_

@interface OrgJsoupSafetyWhitelist_TypedValue : NSObject

#pragma mark Public

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyWhitelist_TypedValue)

FOUNDATION_EXPORT void OrgJsoupSafetyWhitelist_TypedValue_initWithNSString_(OrgJsoupSafetyWhitelist_TypedValue *self, NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyWhitelist_TypedValue)

#endif

#if !defined (OrgJsoupSafetyWhitelist_TagName_) && (INCLUDE_ALL_OrgJsoupSafetyWhitelist || defined(INCLUDE_OrgJsoupSafetyWhitelist_TagName))
#define OrgJsoupSafetyWhitelist_TagName_

@interface OrgJsoupSafetyWhitelist_TagName : OrgJsoupSafetyWhitelist_TypedValue

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)value;

+ (OrgJsoupSafetyWhitelist_TagName *)valueOfWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyWhitelist_TagName)

FOUNDATION_EXPORT void OrgJsoupSafetyWhitelist_TagName_initWithNSString_(OrgJsoupSafetyWhitelist_TagName *self, NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_TagName *new_OrgJsoupSafetyWhitelist_TagName_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_TagName *create_OrgJsoupSafetyWhitelist_TagName_initWithNSString_(NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_TagName *OrgJsoupSafetyWhitelist_TagName_valueOfWithNSString_(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyWhitelist_TagName)

#endif

#if !defined (OrgJsoupSafetyWhitelist_AttributeKey_) && (INCLUDE_ALL_OrgJsoupSafetyWhitelist || defined(INCLUDE_OrgJsoupSafetyWhitelist_AttributeKey))
#define OrgJsoupSafetyWhitelist_AttributeKey_

@interface OrgJsoupSafetyWhitelist_AttributeKey : OrgJsoupSafetyWhitelist_TypedValue

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)value;

+ (OrgJsoupSafetyWhitelist_AttributeKey *)valueOfWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyWhitelist_AttributeKey)

FOUNDATION_EXPORT void OrgJsoupSafetyWhitelist_AttributeKey_initWithNSString_(OrgJsoupSafetyWhitelist_AttributeKey *self, NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_AttributeKey *new_OrgJsoupSafetyWhitelist_AttributeKey_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_AttributeKey *create_OrgJsoupSafetyWhitelist_AttributeKey_initWithNSString_(NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_AttributeKey *OrgJsoupSafetyWhitelist_AttributeKey_valueOfWithNSString_(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyWhitelist_AttributeKey)

#endif

#if !defined (OrgJsoupSafetyWhitelist_AttributeValue_) && (INCLUDE_ALL_OrgJsoupSafetyWhitelist || defined(INCLUDE_OrgJsoupSafetyWhitelist_AttributeValue))
#define OrgJsoupSafetyWhitelist_AttributeValue_

@interface OrgJsoupSafetyWhitelist_AttributeValue : OrgJsoupSafetyWhitelist_TypedValue

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)value;

+ (OrgJsoupSafetyWhitelist_AttributeValue *)valueOfWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyWhitelist_AttributeValue)

FOUNDATION_EXPORT void OrgJsoupSafetyWhitelist_AttributeValue_initWithNSString_(OrgJsoupSafetyWhitelist_AttributeValue *self, NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_AttributeValue *new_OrgJsoupSafetyWhitelist_AttributeValue_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_AttributeValue *create_OrgJsoupSafetyWhitelist_AttributeValue_initWithNSString_(NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_AttributeValue *OrgJsoupSafetyWhitelist_AttributeValue_valueOfWithNSString_(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyWhitelist_AttributeValue)

#endif

#if !defined (OrgJsoupSafetyWhitelist_Protocol_) && (INCLUDE_ALL_OrgJsoupSafetyWhitelist || defined(INCLUDE_OrgJsoupSafetyWhitelist_Protocol))
#define OrgJsoupSafetyWhitelist_Protocol_

@interface OrgJsoupSafetyWhitelist_Protocol : OrgJsoupSafetyWhitelist_TypedValue

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)value;

+ (OrgJsoupSafetyWhitelist_Protocol *)valueOfWithNSString:(NSString *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyWhitelist_Protocol)

FOUNDATION_EXPORT void OrgJsoupSafetyWhitelist_Protocol_initWithNSString_(OrgJsoupSafetyWhitelist_Protocol *self, NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_Protocol *new_OrgJsoupSafetyWhitelist_Protocol_initWithNSString_(NSString *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_Protocol *create_OrgJsoupSafetyWhitelist_Protocol_initWithNSString_(NSString *value);

FOUNDATION_EXPORT OrgJsoupSafetyWhitelist_Protocol *OrgJsoupSafetyWhitelist_Protocol_valueOfWithNSString_(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyWhitelist_Protocol)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupSafetyWhitelist")

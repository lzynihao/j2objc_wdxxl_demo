//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-sources.jar!org/apache/commons/lang3/builder/Diff.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3BuilderDiff")
#ifdef RESTRICT_OrgApacheCommonsLang3BuilderDiff
#define INCLUDE_ALL_OrgApacheCommonsLang3BuilderDiff 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3BuilderDiff 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3BuilderDiff

#if !defined (OrgApacheCommonsLang3BuilderDiff_) && (INCLUDE_ALL_OrgApacheCommonsLang3BuilderDiff || defined(INCLUDE_OrgApacheCommonsLang3BuilderDiff))
#define OrgApacheCommonsLang3BuilderDiff_

#define RESTRICT_OrgApacheCommonsLang3TuplePair 1
#define INCLUDE_OrgApacheCommonsLang3TuplePair 1
#include "org/apache/commons/lang3/tuple/Pair.h"

@protocol JavaLangReflectType;

@interface OrgApacheCommonsLang3BuilderDiff : OrgApacheCommonsLang3TuplePair

#pragma mark Public

- (NSString *)getFieldName;

- (id<JavaLangReflectType>)getType;

- (id)setValueWithId:(id)value;

- (NSString *)description;

#pragma mark Protected

- (instancetype)initWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3BuilderDiff)

FOUNDATION_EXPORT void OrgApacheCommonsLang3BuilderDiff_initWithNSString_(OrgApacheCommonsLang3BuilderDiff *self, NSString *fieldName);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3BuilderDiff)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3BuilderDiff")
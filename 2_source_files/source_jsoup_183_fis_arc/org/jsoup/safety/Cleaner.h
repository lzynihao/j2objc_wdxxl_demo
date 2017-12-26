//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/safety/Cleaner.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupSafetyCleaner")
#ifdef RESTRICT_OrgJsoupSafetyCleaner
#define INCLUDE_ALL_OrgJsoupSafetyCleaner 0
#else
#define INCLUDE_ALL_OrgJsoupSafetyCleaner 1
#endif
#undef RESTRICT_OrgJsoupSafetyCleaner

#if !defined (OrgJsoupSafetyCleaner_) && (INCLUDE_ALL_OrgJsoupSafetyCleaner || defined(INCLUDE_OrgJsoupSafetyCleaner))
#define OrgJsoupSafetyCleaner_

@class OrgJsoupNodesDocument;
@class OrgJsoupSafetyWhitelist;

@interface OrgJsoupSafetyCleaner : NSObject

#pragma mark Public

- (instancetype)initWithOrgJsoupSafetyWhitelist:(OrgJsoupSafetyWhitelist *)whitelist;

- (OrgJsoupNodesDocument *)cleanWithOrgJsoupNodesDocument:(OrgJsoupNodesDocument *)dirtyDocument;

- (jboolean)isValidWithOrgJsoupNodesDocument:(OrgJsoupNodesDocument *)dirtyDocument;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyCleaner)

FOUNDATION_EXPORT void OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(OrgJsoupSafetyCleaner *self, OrgJsoupSafetyWhitelist *whitelist);

FOUNDATION_EXPORT OrgJsoupSafetyCleaner *new_OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(OrgJsoupSafetyWhitelist *whitelist) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSafetyCleaner *create_OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(OrgJsoupSafetyWhitelist *whitelist);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyCleaner)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupSafetyCleaner")

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/mutable/MutableObject.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableObject")
#ifdef RESTRICT_OrgApacheCommonsLang3MutableMutableObject
#define INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableObject 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableObject 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3MutableMutableObject

#if !defined (OrgApacheCommonsLang3MutableMutableObject_) && (INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableObject || defined(INCLUDE_OrgApacheCommonsLang3MutableMutableObject))
#define OrgApacheCommonsLang3MutableMutableObject_

#define RESTRICT_OrgApacheCommonsLang3MutableMutable 1
#define INCLUDE_OrgApacheCommonsLang3MutableMutable 1
#include "org/apache/commons/lang3/mutable/Mutable.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@interface OrgApacheCommonsLang3MutableMutableObject : NSObject < OrgApacheCommonsLang3MutableMutable, JavaIoSerializable >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithId:(id)value;

- (jboolean)isEqual:(id)obj;

- (id)getValue;

- (NSUInteger)hash;

- (void)setValueWithId:(id)value;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3MutableMutableObject)

FOUNDATION_EXPORT void OrgApacheCommonsLang3MutableMutableObject_init(OrgApacheCommonsLang3MutableMutableObject *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableObject *new_OrgApacheCommonsLang3MutableMutableObject_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableObject *create_OrgApacheCommonsLang3MutableMutableObject_init(void);

FOUNDATION_EXPORT void OrgApacheCommonsLang3MutableMutableObject_initWithId_(OrgApacheCommonsLang3MutableMutableObject *self, id value);

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableObject *new_OrgApacheCommonsLang3MutableMutableObject_initWithId_(id value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3MutableMutableObject *create_OrgApacheCommonsLang3MutableMutableObject_initWithId_(id value);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3MutableMutableObject)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3MutableMutableObject")

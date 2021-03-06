//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/TreeTypeAdapter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonTreeTypeAdapter")
#ifdef RESTRICT_ComGoogleGsonTreeTypeAdapter
#define INCLUDE_ALL_ComGoogleGsonTreeTypeAdapter 0
#else
#define INCLUDE_ALL_ComGoogleGsonTreeTypeAdapter 1
#endif
#undef RESTRICT_ComGoogleGsonTreeTypeAdapter

#if !defined (ComGoogleGsonTreeTypeAdapter_) && (INCLUDE_ALL_ComGoogleGsonTreeTypeAdapter || defined(INCLUDE_ComGoogleGsonTreeTypeAdapter))
#define ComGoogleGsonTreeTypeAdapter_

#define RESTRICT_ComGoogleGsonTypeAdapter 1
#define INCLUDE_ComGoogleGsonTypeAdapter 1
#include "com/google/gson/TypeAdapter.h"

@class ComGoogleGsonGson;
@class ComGoogleGsonReflectTypeToken;
@class ComGoogleGsonStreamJsonReader;
@class ComGoogleGsonStreamJsonWriter;
@class IOSClass;
@protocol ComGoogleGsonJsonDeserializer;
@protocol ComGoogleGsonJsonSerializer;
@protocol ComGoogleGsonTypeAdapterFactory;

@interface ComGoogleGsonTreeTypeAdapter : ComGoogleGsonTypeAdapter

#pragma mark Public

+ (id<ComGoogleGsonTypeAdapterFactory>)newFactoryWithComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)exactType
                                                                            withId:(id)typeAdapter OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleGsonTypeAdapterFactory>)newFactoryWithMatchRawTypeWithComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)exactType
                                                                                            withId:(id)typeAdapter OBJC_METHOD_FAMILY_NONE;

+ (id<ComGoogleGsonTypeAdapterFactory>)newTypeHierarchyFactoryWithIOSClass:(IOSClass *)hierarchyType
                                                                    withId:(id)typeAdapter OBJC_METHOD_FAMILY_NONE;

- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value;

#pragma mark Package-Private

- (instancetype)initWithComGoogleGsonJsonSerializer:(id<ComGoogleGsonJsonSerializer>)serializer
                  withComGoogleGsonJsonDeserializer:(id<ComGoogleGsonJsonDeserializer>)deserializer
                              withComGoogleGsonGson:(ComGoogleGsonGson *)gson
                  withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken
                withComGoogleGsonTypeAdapterFactory:(id<ComGoogleGsonTypeAdapterFactory>)skipPast;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonTreeTypeAdapter)

FOUNDATION_EXPORT void ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(ComGoogleGsonTreeTypeAdapter *self, id<ComGoogleGsonJsonSerializer> serializer, id<ComGoogleGsonJsonDeserializer> deserializer, ComGoogleGsonGson *gson, ComGoogleGsonReflectTypeToken *typeToken, id<ComGoogleGsonTypeAdapterFactory> skipPast);

FOUNDATION_EXPORT ComGoogleGsonTreeTypeAdapter *new_ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(id<ComGoogleGsonJsonSerializer> serializer, id<ComGoogleGsonJsonDeserializer> deserializer, ComGoogleGsonGson *gson, ComGoogleGsonReflectTypeToken *typeToken, id<ComGoogleGsonTypeAdapterFactory> skipPast) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonTreeTypeAdapter *create_ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(id<ComGoogleGsonJsonSerializer> serializer, id<ComGoogleGsonJsonDeserializer> deserializer, ComGoogleGsonGson *gson, ComGoogleGsonReflectTypeToken *typeToken, id<ComGoogleGsonTypeAdapterFactory> skipPast);

FOUNDATION_EXPORT id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonTreeTypeAdapter_newFactoryWithComGoogleGsonReflectTypeToken_withId_(ComGoogleGsonReflectTypeToken *exactType, id typeAdapter);

FOUNDATION_EXPORT id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonTreeTypeAdapter_newFactoryWithMatchRawTypeWithComGoogleGsonReflectTypeToken_withId_(ComGoogleGsonReflectTypeToken *exactType, id typeAdapter);

FOUNDATION_EXPORT id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonTreeTypeAdapter_newTypeHierarchyFactoryWithIOSClass_withId_(IOSClass *hierarchyType, id typeAdapter);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonTreeTypeAdapter)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonTreeTypeAdapter")

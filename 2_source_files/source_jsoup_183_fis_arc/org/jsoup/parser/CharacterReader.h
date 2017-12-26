//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/CharacterReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupParserCharacterReader")
#ifdef RESTRICT_OrgJsoupParserCharacterReader
#define INCLUDE_ALL_OrgJsoupParserCharacterReader 0
#else
#define INCLUDE_ALL_OrgJsoupParserCharacterReader 1
#endif
#undef RESTRICT_OrgJsoupParserCharacterReader

#if !defined (OrgJsoupParserCharacterReader_) && (INCLUDE_ALL_OrgJsoupParserCharacterReader || defined(INCLUDE_OrgJsoupParserCharacterReader))
#define OrgJsoupParserCharacterReader_

@class IOSCharArray;
@protocol JavaLangCharSequence;

@interface OrgJsoupParserCharacterReader : NSObject

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithNSString:(NSString *)input;

- (void)advance;

- (jchar)consume;

- (NSString *)consumeAsString;

- (NSString *)consumeData;

- (NSString *)consumeDigitSequence;

- (NSString *)consumeHexSequence;

- (NSString *)consumeLetterSequence;

- (NSString *)consumeLetterThenDigitSequence;

- (NSString *)consumeTagName;

- (NSString *)consumeToWithChar:(jchar)c;

- (NSString *)consumeToWithNSString:(NSString *)seq;

- (NSString *)consumeToAnyWithCharArray:(IOSCharArray *)chars;

- (NSString *)consumeToAnySortedWithCharArray:(IOSCharArray *)chars;

- (NSString *)consumeToEnd;

- (jboolean)containsIgnoreCaseWithNSString:(NSString *)seq;

- (jchar)current;

- (jboolean)isEmpty;

- (void)mark;

- (jboolean)matchConsumeWithNSString:(NSString *)seq;

- (jboolean)matchConsumeIgnoreCaseWithNSString:(NSString *)seq;

- (jboolean)matchesWithChar:(jchar)c;

- (jboolean)matchesWithNSString:(NSString *)seq;

- (jboolean)matchesAnyWithCharArray:(IOSCharArray *)seq;

- (jboolean)matchesAnySortedWithCharArray:(IOSCharArray *)seq;

- (jboolean)matchesDigit;

- (jboolean)matchesIgnoreCaseWithNSString:(NSString *)seq;

- (jboolean)matchesLetter;

- (jint)nextIndexOfWithChar:(jchar)c;

- (jint)nextIndexOfWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq;

- (jint)pos;

- (jboolean)rangeEqualsWithInt:(jint)start
                       withInt:(jint)count
                  withNSString:(NSString *)cached;

- (void)rewindToMark;

- (void)unconsume;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupParserCharacterReader)

inline jchar OrgJsoupParserCharacterReader_get_EOF();
#define OrgJsoupParserCharacterReader_EOF 0xffff
J2OBJC_STATIC_FIELD_CONSTANT(OrgJsoupParserCharacterReader, EOF, jchar)

FOUNDATION_EXPORT void OrgJsoupParserCharacterReader_initWithNSString_(OrgJsoupParserCharacterReader *self, NSString *input);

FOUNDATION_EXPORT OrgJsoupParserCharacterReader *new_OrgJsoupParserCharacterReader_initWithNSString_(NSString *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupParserCharacterReader *create_OrgJsoupParserCharacterReader_initWithNSString_(NSString *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupParserCharacterReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupParserCharacterReader")

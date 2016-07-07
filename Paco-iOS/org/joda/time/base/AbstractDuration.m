//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: joda-time/src/main/java/org/joda/time/base/AbstractDuration.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "org/joda/convert/ToString.h"
#include "org/joda/time/Duration.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/ReadableDuration.h"
#include "org/joda/time/base/AbstractDuration.h"
#include "org/joda/time/format/FormatUtils.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgJodaTimeBaseAbstractDuration

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseAbstractDuration_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgJodaTimeDuration *)toDuration {
  return create_OrgJodaTimeDuration_initWithLong_([self getMillis]);
}

- (OrgJodaTimePeriod *)toPeriod {
  return create_OrgJodaTimePeriod_initWithLong_([self getMillis]);
}

- (jint)compareToWithId:(id<OrgJodaTimeReadableDuration>)other {
  cast_check(other, OrgJodaTimeReadableDuration_class_());
  jlong thisMillis = [self getMillis];
  jlong otherMillis = [((id<OrgJodaTimeReadableDuration>) nil_chk(other)) getMillis];
  if (thisMillis < otherMillis) {
    return -1;
  }
  if (thisMillis > otherMillis) {
    return 1;
  }
  return 0;
}

- (jboolean)isEqualWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  if (duration == nil) {
    duration = JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  return [self compareToWithId:duration] == 0;
}

- (jboolean)isLongerThanWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  if (duration == nil) {
    duration = JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  return [self compareToWithId:duration] > 0;
}

- (jboolean)isShorterThanWithOrgJodaTimeReadableDuration:(id<OrgJodaTimeReadableDuration>)duration {
  if (duration == nil) {
    duration = JreLoadStatic(OrgJodaTimeDuration, ZERO);
  }
  return [self compareToWithId:duration] < 0;
}

- (jboolean)isEqual:(id)duration {
  if (self == duration) {
    return true;
  }
  if ([OrgJodaTimeReadableDuration_class_() isInstance:duration] == false) {
    return false;
  }
  id<OrgJodaTimeReadableDuration> other = (id<OrgJodaTimeReadableDuration>) cast_check(duration, OrgJodaTimeReadableDuration_class_());
  return [self getMillis] == [((id<OrgJodaTimeReadableDuration>) nil_chk(other)) getMillis];
}

- (NSUInteger)hash {
  jlong len = [self getMillis];
  return (jint) (len ^ (JreURShift64(len, 32)));
}

- (NSString *)description {
  jlong millis = [self getMillis];
  JavaLangStringBuffer *buf = create_JavaLangStringBuffer_init();
  [buf appendWithNSString:@"PT"];
  jboolean negative = (millis < 0);
  OrgJodaTimeFormatFormatUtils_appendUnpaddedIntegerWithJavaLangStringBuffer_withLong_(buf, millis);
  while ([buf length] < (negative ? 7 : 6)) {
    [buf insertWithInt:negative ? 3 : 2 withNSString:@"0"];
  }
  if ((millis / 1000) * 1000 == millis) {
    [buf setLengthWithInt:[buf length] - 3];
  }
  else {
    [buf insertWithInt:[buf length] - 3 withNSString:@"."];
  }
  [buf appendWithChar:'S'];
  return [buf description];
}

+ (IOSObjectArray *)__annotations_toString {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[OrgJodaConvertToString alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AbstractDuration", NULL, 0x4, NULL, NULL },
    { "toDuration", NULL, "Lorg.joda.time.Duration;", 0x1, NULL, NULL },
    { "toPeriod", NULL, "Lorg.joda.time.Period;", 0x1, NULL, NULL },
    { "compareToWithId:", "compareTo", "I", 0x1, NULL, NULL },
    { "isEqualWithOrgJodaTimeReadableDuration:", "isEqual", "Z", 0x1, NULL, NULL },
    { "isLongerThanWithOrgJodaTimeReadableDuration:", "isLongerThan", "Z", 0x1, NULL, NULL },
    { "isShorterThanWithOrgJodaTimeReadableDuration:", "isShorterThan", "Z", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgJodaTimeBaseAbstractDuration = { 2, "AbstractDuration", "org.joda.time.base", NULL, 0x401, 10, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgJodaTimeBaseAbstractDuration;
}

@end

void OrgJodaTimeBaseAbstractDuration_init(OrgJodaTimeBaseAbstractDuration *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseAbstractDuration)
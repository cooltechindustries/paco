//
//  OrgJodaTimeDateTime+PacoDateHelper.h
//  Paco
//
//  Authored by  Tim N. O'Brien on 8/31/15.
//  Copyright (c) 2015 Paco. All rights reserved.
//

#import "org/joda/time/DateTime.h"


@interface OrgJodaTimeDateTime (PacoDateHelper)

 
-(NSDate*) nsDateValue;
-(BOOL) isGreaterThan:(OrgJodaTimeDateTime*) otherTime;
-(BOOL) isLessThan:(OrgJodaTimeDateTime*) otherTime;

-(NSString*) dateTimeFormated;

 

@end
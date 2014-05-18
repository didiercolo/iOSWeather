//
//  MForecastDate.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MForecastDate.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation MForecastDate

@synthesize pretty = _pretty;
@synthesize weekday = _weekday;
@synthesize weekday_short=_weekday_short;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"pretty":@"pretty",
             @"weekday":@"weekday",
             @"weekday_short":@"weekday_short",
             };
}

@end

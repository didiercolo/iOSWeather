//
//  MForecastDayTemperature.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MForecastDayTemperature.h"

#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation MForecastDayTemperature

@synthesize fahrenheit = _fahrenheit;
@synthesize celsius = _celsius;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
           //  @"fahrenheit":@"fahrenheit",
             @"celsius":@"celsius",
             };
}

@end

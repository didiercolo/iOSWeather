//
//  MSimpleForecast.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/11/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MSimpleForecast.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation MSimpleForecast

@synthesize forecastday = _forecastday;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"forecastday":@"forecastday",
             };
}

+ (NSValueTransformer *)forecastdayJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[MForecastDay class]];
}

@end

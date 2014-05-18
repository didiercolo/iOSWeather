//
//  Forecast.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/11/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "Forecast.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation Forecast

@synthesize simpleForecast = _simpleForecast;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"simpleForecast":@"simpleforecast",
             
             };
}

+ (NSValueTransformer *)simpleForecastJSONTransformer {
    NSLog(@"f``");
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[MSimpleForecast class]];
}

@end

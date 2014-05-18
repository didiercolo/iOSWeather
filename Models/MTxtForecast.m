//
//  MTxtForecast.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MTxtForecast.h"
#import "MForecastTxtDay.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"
@implementation MTxtForecast

@synthesize txtForecastDay =_txtForecastDay;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"txtForecastDay":@"forecastday",
             };
}

+ (NSValueTransformer *)txtForecastDayJSONTransformer {
    return [NSValueTransformer  mtl_JSONArrayTransformerWithModelClass:[MForecastTxtDay class]];
}
@end

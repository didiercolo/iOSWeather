//
//  MForecastDay.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MForecastDay.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"

@implementation MForecastDay

@synthesize conditions=_conditions;
@synthesize icon = _icon;
@synthesize iconUrl= _iconUrl;

@synthesize WeatherDate =_WeatherDate;
@synthesize temperature = _temperature;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"conditions":@"conditions",
             @"icon":@"icon",
             @"iconUrl":@"icon_url",
             @"WeatherDate":@"date",
             @"temperature":@"high",
             };
}


+ (NSValueTransformer *)temperatureJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[MForecastDayTemperature class]];
}

+ (NSValueTransformer *)WeatherDateJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[MForecastDate class]];
}


+ (NSValueTransformer *)iconUrlJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end

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
@synthesize txtForecast = _txtForecast;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"simpleForecast":@"simpleforecast",
             @"txtForecast":@"txt_forecast",
             
             };
}

+ (NSValueTransformer *)simpleForecastJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[MSimpleForecast class]];
}

+ (NSValueTransformer *)txtForecastJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[MTxtForecast class]];
}

@end

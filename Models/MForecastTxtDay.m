//
//  MForecastTxtDay.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MForecastTxtDay.h"
#import "MForecastDayDetails.h"


@implementation MForecastTxtDay

@synthesize forecastday = _forecastday;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"forecastday":@"forecastday",
             };
}
//
//+ (NSValueTransformer *)forecastdayJSONTransformer {
//    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[MForecastDayDetails  class]];
//}
@end

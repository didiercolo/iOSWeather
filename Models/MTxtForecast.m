//
//  MTxtForecast.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MTxtForecast.h"

@implementation MTxtForecast

@synthesize txtForecastDetails =_txtForecastDetails;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"txtForecastDetails":@"forecastday",
             };
}
@end

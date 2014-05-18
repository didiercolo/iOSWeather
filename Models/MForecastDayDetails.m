//
//  MForecastDayDetails.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MForecastDayDetails.h"

@implementation MForecastDayDetails

@synthesize wheaterConditionText = _wheaterConditionText;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"wheaterConditionText":@"fcttext",
             @"icon":@"icon",
            
             };
}
@end

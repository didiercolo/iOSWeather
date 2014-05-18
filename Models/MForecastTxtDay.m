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

@synthesize textDescription=_textDescription;

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"textDescription":@"fcttext",
             };
}

@end

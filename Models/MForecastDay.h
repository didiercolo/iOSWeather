//
//  MForecastDay.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MForecastDate.h"
#import "MForecastDayTemperature.h"
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MForecastDay : MTLModel<MTLJSONSerializing>

@property (copy, nonatomic) NSString * conditions;
@property (copy, nonatomic) NSString * icon;
@property(strong, nonatomic) NSURL * iconUrl;

@property(strong, nonatomic) MForecastDate * WeatherDate;
@property(strong, nonatomic) MForecastDayTemperature * temperature;

@end

//
//  MForecastDayTemperature.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MForecastDayTemperature  : MTLModel<MTLJSONSerializing>

@property NSString * fahrenheit;
@property NSString * celsius;

@end

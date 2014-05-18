//
//  MSimpleForecast.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/11/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>
#import "MForecastDay.h"

@interface MSimpleForecast : MTLModel<MTLJSONSerializing>

@property (strong,nonatomic) NSArray * forecastday;

@end

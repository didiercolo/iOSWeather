//
//  MWeatherForecast.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/13/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>
#import "MCity.h"

@interface MWeatherForecast : MTLModel<MTLJSONSerializing>

@property(strong , nonatomic) NSDictionary * weatherReturned;

@property(strong,nonatomic) MCity * city;


@property(strong,nonatomic) NSArray * lists;


-(void) getWeather;

-(void) copy:(MWeatherForecast *) jsonWeather;

@end

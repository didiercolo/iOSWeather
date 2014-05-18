//
//  MWeather.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/11/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MTLJSONAdapter.h"
#import <MTLModel.h>
#import "Forecast.h"

@interface MWeather : MTLModel<MTLJSONSerializing>

@property(strong , nonatomic) NSArray * weatherForecast;
@property (strong,  nonatomic) Forecast * forecast;

-(void) getWeatherForecast;

-(void) copy:(MWeather *) weather;

@end

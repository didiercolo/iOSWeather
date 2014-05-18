//
//  Forecast.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/11/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>
#import "MSimpleForecast.h"

@interface Forecast  : MTLModel<MTLJSONSerializing>

@property  (strong,nonatomic) MSimpleForecast * simpleForecast;

@end

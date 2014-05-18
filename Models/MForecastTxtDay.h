//
//  MForecastTxtDay.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MForecastTxtDay : MTLModel<MTLJSONSerializing>

@property (strong,nonatomic) NSArray * forecastday;

@end

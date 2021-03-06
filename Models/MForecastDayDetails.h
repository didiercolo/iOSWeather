//
//  MForecastDayDetails.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MForecastDayDetails : MTLModel<MTLJSONSerializing>

@property (copy,nonatomic) NSString * wheaterConditionText;
@end

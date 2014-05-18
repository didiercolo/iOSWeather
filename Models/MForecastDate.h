//
//  MForecastDate.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLJSONAdapter.h"
#import <MTLModel.h>

@interface MForecastDate : MTLModel<MTLJSONSerializing>

@property (copy,nonatomic) NSString * weekday;
@property (copy,nonatomic) NSString * pretty;
@property (copy,nonatomic) NSString * weekday_short;
@end

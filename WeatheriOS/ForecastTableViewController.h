//
//  ForecastTableViewController.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWeather.h"
@interface ForecastTableViewController : UITableViewController

@property (strong,nonatomic) MWeather * weatherDataTableData;

@end

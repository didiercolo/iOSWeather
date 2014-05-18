//
//  WeatherDetialViewController.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MForecastDay.h"

@interface WeatherDetialViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *daySelected;
@property (weak, nonatomic) IBOutlet UILabel *daySelectedIcon;
@property (weak, nonatomic) IBOutlet UILabel *daySelectedDescription;

@property (strong,nonatomic) MForecastDay *dayData;

@end

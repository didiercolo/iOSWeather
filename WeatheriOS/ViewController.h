//
//  ViewController.h
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWeatherForecast.h"
#import "MWeather.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *todayWeatherIcon;

@property (weak, nonatomic) IBOutlet UILabel *todayWeatherText;

@property (weak, nonatomic) IBOutlet UILabel *locationText;

@property (weak, nonatomic) IBOutlet UILabel *CurrentTemperature;

@property (weak, nonatomic) IBOutlet UILabel *lowTemperature;

@property (weak, nonatomic) IBOutlet UILabel *highTemperature;



@property (strong,nonatomic) MWeather * weatherData;

@end

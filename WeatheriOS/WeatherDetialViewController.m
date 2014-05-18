//
//  WeatherDetialViewController.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "WeatherDetialViewController.h"
#import "IconSelector.h"

#define LIGHT_FONT      @"HelveticaNeue-Light"
#define ULTRALIGHT_FONT @"HelveticaNeue-UltraLight"

@interface WeatherDetialViewController ()
@property (strong,nonatomic ) IconSelector *iconSelector;

@end

@implementation WeatherDetialViewController

@synthesize dayData =_dayData;
@synthesize iconSelector=_iconSelector;
@synthesize descriptiondata=_descriptiondata;

-(IconSelector *)iconSelector{
    if(_iconSelector == nil)
    {
        _iconSelector = [[IconSelector alloc] init];
    }
    return _iconSelector;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [self initializateDaySelectedWeatherIcon];
    [self initializateDate];
    [self initializateDescription];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.daySelectedIcon.text=  [self.iconSelector iconForCondition:self.dayData.icon];
    self.daySelected.text = self.dayData.WeatherDate.weekday;
    self.daySelectedDescription.text = self.descriptiondata;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) initializateDaySelectedWeatherIcon
{
    [self.daySelectedIcon setFont:[UIFont  fontWithName:@"Climacons-Font" size:180]];
    [self.daySelectedIcon setTextColor:[UIColor whiteColor]];
    [self.daySelectedIcon setBackgroundColor:[UIColor clearColor]];
    [self.daySelectedIcon setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateDate
{
    [self.daySelected setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.daySelected setTextColor:[UIColor whiteColor]];
    [self.daySelected setBackgroundColor:[UIColor clearColor]];
    [self.daySelected setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateDescription
{
    [self.daySelectedDescription setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.daySelectedDescription setTextColor:[UIColor whiteColor]];
    [self.daySelectedDescription setBackgroundColor:[UIColor clearColor]];
    [self.daySelectedDescription setTextAlignment:NSTextAlignmentCenter];
}

@end

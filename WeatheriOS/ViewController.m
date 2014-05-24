//
//  ViewController.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/9/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>
#import <SVProgressHUD.h>
#import "MCity.h"
#import "IconSelector.h"
#import "ForecastTableViewController.h"
#import "MForecastDay.h"


#define LIGHT_FONT      @"HelveticaNeue-Light"
#define ULTRALIGHT_FONT @"HelveticaNeue-UltraLight"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *secondDay;
@property (weak, nonatomic) IBOutlet UILabel *thirdDay;
@property (weak, nonatomic) IBOutlet UILabel *fourtyDay;

@property (weak, nonatomic) IBOutlet UILabel *secondDayText;
@property (weak, nonatomic) IBOutlet UILabel *thirdDayText;
@property (weak, nonatomic) IBOutlet UILabel *fourtyDayText;
@property (weak, nonatomic) IBOutlet UIButton *ViewDetailsButton;

@property (strong,nonatomic) IconSelector * iconSelector;
@end

@implementation ViewController

@synthesize weatherData = _weatherData;
@synthesize iconSelector = _iconSelector;

-(MWeather *)weatherData{
    if(_weatherData == nil)
    {
        _weatherData = [[MWeather alloc] init];
    }
    return _weatherData;
}

-(IconSelector *)iconSelector{
    if(_iconSelector == nil)
    {
        _iconSelector = [[IconSelector alloc] init];
    }
    return _iconSelector;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
     [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
}


- (void)viewDidLoad
{
       [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(weatherReturnedCorrectly)
                                                 name:@"WeatherReturnedSuccessfulNotification"
                                               object:nil];
    [self initializateTodayWeatherIcon];
    [self initializateLocationText];
    [self initializateTodayWeathertext];
    
    [self initializateLowTemperature];
    [self initializateHighTemperature];
    [self initializateCurrentTemperature];
    
    [self initializateSecondDay];
    [self initializateThirdDay];
    [self initializateFourDay];
    [self initializateSecondDayText];
    [self initializateThirdDayText];
    [self initializateFourtyDayText];
}

-(void)viewDidAppear:(BOOL)animated
{
   
    [super viewDidAppear:animated];
   
    [SVProgressHUD showWithStatus:@"Getting Weather"];
    
    //[self.weather getWeather ];
    [self.weatherData getWeatherForecast];
    

    
}

-(void) initializateTodayWeatherIcon
{
    [self.todayWeatherIcon setFont:[UIFont  fontWithName:@"Climacons-Font" size:140]];
    [self.todayWeatherIcon setTextColor:[UIColor whiteColor]];
    [self.todayWeatherIcon setBackgroundColor:[UIColor clearColor]];
    [self.todayWeatherIcon setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateTodayWeathertext
{
    [self.todayWeatherText setFont:[UIFont  fontWithName:ULTRALIGHT_FONT size:26]];
    [self.todayWeatherText setTextColor:[UIColor whiteColor]];
    [self.todayWeatherText setBackgroundColor:[UIColor clearColor]];
    [self.todayWeatherText setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateLocationText
{
    [self.locationText setFont:[UIFont  fontWithName:LIGHT_FONT size:16]];
    [self.locationText setTextColor:[UIColor whiteColor]];
    [self.locationText setBackgroundColor:[UIColor clearColor]];
    [self.locationText setTextAlignment:NSTextAlignmentCenter];
}


-(void) initializateCurrentTemperature
{
    [self.CurrentTemperature setFont:[UIFont  fontWithName:ULTRALIGHT_FONT size:60]];
    [self.CurrentTemperature setTextColor:[UIColor whiteColor]];
    [self.CurrentTemperature setBackgroundColor:[UIColor clearColor]];
    [self.CurrentTemperature setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateHighTemperature
{
    [self.highTemperature setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.highTemperature setTextColor:[UIColor whiteColor]];
    [self.highTemperature setBackgroundColor:[UIColor clearColor]];
    [self.highTemperature setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateLowTemperature
{
    [self.lowTemperature setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.lowTemperature setTextColor:[UIColor whiteColor]];
    [self.lowTemperature setBackgroundColor:[UIColor clearColor]];
    [self.lowTemperature setTextAlignment:NSTextAlignmentCenter];
}


-(void) initializateSecondDay
{
    [self.secondDay setFont:[UIFont  fontWithName:@"Climacons-Font" size:60]];
    [self.secondDay setTextColor:[UIColor whiteColor]];
    [self.secondDay setBackgroundColor:[UIColor clearColor]];
    [self.secondDay setTextAlignment:NSTextAlignmentCenter];
}


-(void) initializateThirdDay
{
    [self.thirdDay setFont:[UIFont  fontWithName:@"Climacons-Font" size:60]];
    [self.thirdDay setTextColor:[UIColor whiteColor]];
    [self.thirdDay setBackgroundColor:[UIColor clearColor]];
    [self.thirdDay setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateFourDay
{
    [self.fourtyDay setFont:[UIFont  fontWithName:@"Climacons-Font" size:60]];
    [self.fourtyDay setTextColor:[UIColor whiteColor]];
    [self.fourtyDay setBackgroundColor:[UIColor clearColor]];
    [self.fourtyDay setTextAlignment:NSTextAlignmentCenter];
}


-(void) initializateSecondDayText
{
    [self.secondDayText setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.secondDayText setTextColor:[UIColor whiteColor]];
    [self.secondDayText setBackgroundColor:[UIColor clearColor]];
    [self.secondDayText setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateThirdDayText
{
    [self.thirdDayText setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.thirdDayText setTextColor:[UIColor whiteColor]];
    [self.thirdDayText setBackgroundColor:[UIColor clearColor]];
    [self.thirdDayText setTextAlignment:NSTextAlignmentCenter];
}

-(void) initializateFourtyDayText
{
    [self.fourtyDayText setFont:[UIFont  fontWithName:LIGHT_FONT size:18]];
    [self.fourtyDayText setTextColor:[UIColor whiteColor]];
    [self.fourtyDayText setBackgroundColor:[UIColor clearColor]];
    [self.fourtyDayText setTextAlignment:NSTextAlignmentCenter];
}

-(void)weatherReturnedCorrectly
{
    [SVProgressHUD dismiss];
    //[self.tableView reloadData];
    
  //  NSLog((self.weather.city.name));
    MForecastDay *currentDayTextData=[self.weatherData.forecast.simpleForecast.forecastday objectAtIndex:0];
    MForecastDay *secondDayTextData=[self.weatherData.forecast.simpleForecast.forecastday objectAtIndex:1];
    MForecastDay *thirdDayTextData=[self.weatherData.forecast.simpleForecast.forecastday objectAtIndex:2];
    MForecastDay *fourDayTextData=[self.weatherData.forecast.simpleForecast.forecastday objectAtIndex:3];
    
    self.todayWeatherIcon.text =  [self.iconSelector iconForCondition:currentDayTextData.icon];
    self.todayWeatherText.text = currentDayTextData.conditions;
    self.locationText.text=@"San Jose Costa Rica";
    self.CurrentTemperature.text =currentDayTextData.temperature.celsius;
    
    
    
//    self.highTemperature.text=    [@"H " stringByAppendingString:currentDayTextData.temperature.celsius];
//    self.lowTemperature.text=@"L 22";
//    
    self.secondDayText.text=secondDayTextData.WeatherDate.weekday_short;;
    self.secondDay.text= [self.iconSelector iconForCondition:secondDayTextData.icon];

    
    self.thirdDayText.text=thirdDayTextData.WeatherDate.weekday_short;
    self.thirdDay.text=[self.iconSelector iconForCondition:thirdDayTextData.icon];
    
    self.fourtyDayText.text=fourDayTextData.WeatherDate.weekday_short;
    self.fourtyDay.text=[self.iconSelector iconForCondition:fourDayTextData.icon];
    
    [self.ViewDetailsButton setTitle:@"View Details" forState:UIControlStateNormal];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
 
    
    ForecastTableViewController * tableWeatherList = segue.destinationViewController;
    
    tableWeatherList.weatherDataTableData = self.weatherData;
    
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    
//    MTweet * tweet =  [self.tweets.tweets objectAtIndex:indexPath.row];
//    
//    TweetDetailViewController * detail =  segue.destinationViewController;
//    
//    detail.tweet = tweet;
//    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ForecastTableViewController.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/17/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "ForecastTableViewController.h"
#import <AFNetworking/UIImageView+AFNetworking.h>
#import "MForecastDay.h"
#import "MForecastTxtDay.h"
#import "WeatherDetialViewController.h"

@interface ForecastTableViewController ()

@end

@implementation ForecastTableViewController

@synthesize weatherDataTableData = _weatherDataTableData;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
 [[self navigationController] setNavigationBarHidden:NO animated:YES];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.weatherDataTableData.forecast.simpleForecast.forecastday.count;
//return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"forecastDayCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    UILabel *textLabel = (UILabel *)[cell viewWithTag:2500];
    UILabel *textLabelCondition = (UILabel *)[cell viewWithTag:3000];
    UIImageView * imageView =  (UIImageView *)[cell viewWithTag:2000];
    
  
    MForecastDay * day = [self.weatherDataTableData.forecast.simpleForecast.forecastday objectAtIndex:indexPath.row];
    
    textLabel.text = day.WeatherDate.weekday;
    textLabelCondition.text = day.conditions;
    [imageView setImageWithURL:day.iconUrl];
    
    //[cell setBackgroundColor:[UIColor cyanColor]];
    return cell;
}


// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    //MTweet * tweet =  [self.tweets.tweets objectAtIndex:indexPath.row];
    
    MForecastDay *selectedDayData=[self.weatherDataTableData.forecast.simpleForecast.forecastday objectAtIndex:indexPath.row];

    
    WeatherDetialViewController *dayDetailView = segue.destinationViewController;
    dayDetailView.dayData = selectedDayData;
    dayDetailView.descriptiondata = [[self.weatherDataTableData.forecast.txtForecast.txtForecastDay objectAtIndex:indexPath.row] textDescription];
   
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/






@end

//
//  MWeatherForecast.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/13/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MWeatherForecast.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"
#import  <AFNetworking/AFHTTPRequestOperationManager.h>

@implementation MWeatherForecast

@synthesize city = _city;
@synthesize weatherReturned = _weatherReturned;


-(void)copy:(MWeatherForecast *)jsonWeather{
    //self.weatherReturned = jsonWeather.weatherReturned;
    self.city = jsonWeather.city;
}

+ (NSValueTransformer *)cityJSONTransformer
{
    return [NSValueTransformer   mtl_JSONDictionaryTransformerWithModelClass :[MCity class]];
}


+ (NSDictionary*)JSONKeyPathsByPropertyKey{
    return @{
             @"city": @"city",
             };
}

-(void) getWeather
{
    
    NSString * absoluteURL = @"http://api.openweathermap.org/data/2.5/forecast?q=San%20jose,cr&units=metric";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    
    [manager GET:absoluteURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
         NSLog(@"JSON RESPONSE:%@",operation.responseString);
        
       // NSDictionary *jsonDict = @{@"tweets": responseObject};
        
        NSError *error = nil;
        
        MWeatherForecast * jsonWeaterReturned = [MTLJSONAdapter modelOfClass:MWeatherForecast.class fromJSONDictionary:responseObject error:&error];
        
        [self copy:jsonWeaterReturned];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"WeatherReturnedSuccessfulNotification" object:nil];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        NSLog(@"error: %@",  operation.responseString);
        
    }];
}
@end

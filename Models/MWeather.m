//
//  MWeather.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/11/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.


#import "MWeather.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"
#import  <AFNetworking/AFHTTPRequestOperationManager.h>


@implementation MWeather

@synthesize weatherForecast =_weatherForecast;
@synthesize forecast =_forecast;





+ (NSValueTransformer *)forecastJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[Forecast class]];
}

+ (NSDictionary*)JSONKeyPathsByPropertyKey{
    return @{
             @"forecast": @"forecast",
             };
}

-(void) copy:(MWeather *) weather{
    
    self.weatherForecast = weather.weatherForecast;
    self.forecast = weather.forecast;

}

-(void) getWeatherForecast
{
    
   // NSString * absoluteURL = @"http://api.wunderground.com/api/a2ba76eaa1ddf731/forecast/q/SAn%20jose%20costa%20rica.json";
    NSString * absoluteURL = @"http://api.wunderground.com/api/a2ba76eaa1ddf731/forecast/conditions/q/9.933888,-84.078173.json";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"Content-Type" forHTTPHeaderField:@"application/json"];
    
    
    [manager GET:absoluteURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"JSON RESPONSE:%@",responseObject);
        
       // NSDictionary *jsonDict = @{@"weaterForecastInformation": responseObject};
        
        NSError *error = nil;
        
        MWeather * weather = [MTLJSONAdapter modelOfClass:MWeather.class fromJSONDictionary:responseObject error:&error];
        
        
        //NSLog(weather.weatherForecast);
        [self copy:weather];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"WeatherReturnedSuccessfulNotification" object:nil];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        NSLog(@"error: %@",  operation.responseString);
        
    }];
}

@end

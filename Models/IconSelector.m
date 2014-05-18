//
//  IconSelector.m
//  Prueba-Iconos
//
//  Created by Didier  Corrales on 5/15/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "IconSelector.h"
//#import "Climacons.h"
#import "NSString+Substring.h"
@implementation IconSelector

- (NSString *)iconForCondition:(NSString *)condition
{
    NSString *iconName = [NSString stringWithFormat:@"%c", ClimaconSun];
    NSString *lowercaseCondition = [condition lowercaseString];
    
    if([lowercaseCondition contains:@"clear"]) {
        iconName = [NSString stringWithFormat:@"%c", ClimaconSun];
    } else if([lowercaseCondition contains:@"cloud"]) {
        iconName = [NSString stringWithFormat:@"%c", ClimaconCloud];
    } else if([lowercaseCondition contains:@"drizzle"]  ||
              [lowercaseCondition contains:@"rain"]     ||
              [lowercaseCondition contains:@"thunderstorm"]) {
        iconName = [NSString stringWithFormat:@"%c", ClimaconRain];
    } else if([lowercaseCondition contains:@"snow"]     ||
              [lowercaseCondition contains:@"hail"]     ||
              [lowercaseCondition contains:@"ice"]) {
        iconName = [NSString stringWithFormat:@"%c", ClimaconSnow];
    } else if([lowercaseCondition contains:@"fog"]      ||
              [lowercaseCondition contains:@"overcast"] ||
              [lowercaseCondition contains:@"smoke"]    ||
              [lowercaseCondition contains:@"dust"]     ||
              [lowercaseCondition contains:@"ash"]      ||
              [lowercaseCondition contains:@"mist"]     ||
              [lowercaseCondition contains:@"haze"]     ||
              [lowercaseCondition contains:@"spray"]    ||
              [lowercaseCondition contains:@"squall"]) {
        iconName = [NSString stringWithFormat:@"%c", ClimaconHaze];
    }
    return iconName;
}

@end

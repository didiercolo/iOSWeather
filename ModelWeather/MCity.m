//
//  MCity.m
//  WeatheriOS
//
//  Created by Didier  Corrales on 5/13/14.
//  Copyright (c) 2014 Didier  Corrales. All rights reserved.
//

#import "MCity.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"
#import "NSValueTransformer+MTLInversionAdditions.h"
@implementation MCity

@synthesize name = _name;


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name":@"name",
             };
}

@end

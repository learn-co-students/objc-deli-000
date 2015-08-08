//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine {
    NSMutableString *statusMsg = [[NSMutableString alloc] init];
    
    if (deliLine.count < 1) {
        [statusMsg appendString: @"The line is currently empty." ];
    } else {
    
        [statusMsg appendString: @"The line is:"];
        
        
        for (NSUInteger i = 0; i < deliLine.count; i++) {
            NSNumber *idx = @(i+1);
            
            [statusMsg appendFormat:@"\n%@. %@", idx, deliLine[i]];
            
        }
        
    }
    return statusMsg;
}

-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    NSMutableArray *order = [[NSMutableArray alloc] initWithArray:deliLine];
    
    [order addObject:name];
    
    return order;
}


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *next = deliLine[0];
    
    NSMutableArray *newLine = [[NSMutableArray alloc] initWithArray:deliLine];
    
    [newLine removeObjectAtIndex:0];
    
    [deliLine setArray:newLine];
    
    return next;
}

@end

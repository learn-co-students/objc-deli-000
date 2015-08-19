//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//@"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan"

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *) deliLine{
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        NSMutableString *line = [@"The line is:" mutableCopy];
        for (NSInteger i = 0; i < [deliLine count]; i++) {
            [line appendFormat:@"\n%li. %@", i+1, deliLine[i]];
        }
        return line;
    }
    return nil;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *) deliLine{
    [deliLine addObject:name];

}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *) deliLine{
    NSString *nextCustomer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}


@end

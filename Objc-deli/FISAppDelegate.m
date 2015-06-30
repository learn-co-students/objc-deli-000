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


-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine{
    
    /* if line is empty */
    if([deliLine count] == 0) {
        
        return @"The line is currently empty.";
        
    }
    /* if line is not empty */
    else {
        
        NSString *newString = @"The line is:";
        NSInteger position = 0;
        
        for(id object in deliLine){
            position += 1;
            newString = [newString stringByAppendingFormat:@"\n%li. %@", position, object];
        };

        return newString;
    }
    
};

-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name];
    return deliLine;
};

-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *nextPerson = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    return nextPerson;
};



@end

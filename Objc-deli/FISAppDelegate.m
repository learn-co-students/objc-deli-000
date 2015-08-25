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

-(NSString *)stringWithDeliLine:(NSArray *)deliLine {
   
    NSString *fullNumberName = @"";
   
    if ([deliLine count]==0) {
        fullNumberName = [fullNumberName stringByAppendingString:@"The line is currently empty."];
    }
    else {
    fullNumberName = [fullNumberName stringByAppendingString:@"The line is:"];
    }
    
    
    for (NSInteger i=0; i<[deliLine count]; i++) {
        
        NSInteger lineNumber = i+1;
        NSString *numberName = [NSString stringWithFormat:@"\n%lu. %@",lineNumber, deliLine[i]];
        fullNumberName = [fullNumberName stringByAppendingString:numberName];
        
    }
    
return fullNumberName;
    
}


-()addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
   
    [deliLine addObject:name];
    return deliLine;
}


-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
 //   NSMutableArray *serveLine = [NSMutableArray new];
//    NSString *subName=@"";
    
    
 //   for (NSInteger i=0; i<[deliLine count]; i++) {
        
        NSString *subName = [deliLine objectAtIndex:0];
        [deliLine removeObjectAtIndex:0];
        return subName;
  
    
 //   }
    
 //return subName;
    
}

@end

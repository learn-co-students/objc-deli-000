//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (NSMutableArray*) takeANumberWithDeliLine: (NSMutableArray*) deliLine Name: (NSString*) name {
    
    [deliLine addObject:name];
    return deliLine;
}


- (NSMutableArray*) nowServingWithDeliLine: (NSMutableArray*) deliLine {

    // remove first person from the line
if (deliLine.count>0 ) {
    NSString* name = [deliLine objectAtIndex:0];
    [deliLine removeObjectAtIndex:0];
    NSLog(@"%@",name);
} else {
    NSLog(@"There is nobody waiting to be served!");
}
return deliLine;
}





- (NSString*) deliLine: (NSMutableArray*) deliLine {
    if (deliLine.count>0 ) {
        NSString * myString=[[NSString alloc]init];
        NSInteger i = 0;
        myString = [myString stringByAppendingString:@"The line is currently:"];
        //    "The line is currently: 1. Ada 2. Al"
        for (id name in deliLine) {
            i = i + 1;
            NSString* iAsString = [NSString stringWithFormat:@"%li", (long)i];
            myString = [myString stringByAppendingString:@" "];
            myString = [myString stringByAppendingString:iAsString];
            myString = [myString stringByAppendingString:@". "];
            myString = [myString stringByAppendingString:name];
            
        }
        return myString;
        
    } else {
        return @"The line is empty";
    }

}








- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

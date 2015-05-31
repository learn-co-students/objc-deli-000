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
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:@"Danny", @"Raf", @"Fernando", nil];
    
    [self nowServingWithDeliLine:array];
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

- (NSMutableArray *)takeANumberWithDeliLine:(NSMutableArray *)line Name:(NSString *)name{
    
    [line addObject:name];
    NSString *logString;
    
    for (NSInteger i = 0; i <[line count]; i++) {
       logString = [NSString stringWithFormat:@"Hello %@, you are number %ld in line", name, i +1];
        NSLog(@"%@", logString);
        
    }
    return line;
}

- (NSMutableArray *)nowServingWithDeliLine:(NSMutableArray *)line{
    
    [line removeObject:[line firstObject]];
    
    if ([line count] > 0) {
        return line;
    }else{
        
        NSLog(@"The line is empty!");
    }
    
    return line;
}

- (NSString *)deliLine:(NSMutableArray *)line{
    
    
    NSString *lineString = @"The line is currently: ";
    if ([line count] > 0) {
        NSInteger count = 1;
        for (NSString *name in line) {
            lineString = [lineString stringByAppendingString:[NSString stringWithFormat:@"%ld. %@ ", (long)count, name]];
            count++;
        }
        return [NSString stringWithFormat:@"%@", lineString];
    }
    return @"The line is empty";
    
}

@end

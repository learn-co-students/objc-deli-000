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

//-(NSString *)badgeMaker:(NSString *)attendee {
//    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", attendee];
//    return badge;
//}

//- (instancetype)initWithName:(NSString *)name WeightInPounds:(NSNumber *)weight HeightInInches:(NSNumber *)height SenseOfHumor:(NSString *)senseOfHumor
//{
//    self = [super init];
//
//    if (self)
//    {
//        _name = name;
//        _weight = weight;
//        _height = height;
//        _senseOfHumor = senseOfHumor;
//        _arms = 2;
//        _legs = 2;
//    }
//
//    return self;
//}

-(NSMutableArray *)takeANumberWithDeliLine:(NSMutableArray *)deliLine Name:(NSString *)nextCustomer {
    NSMutableArray *newLine = deliLine;
    [newLine addObject:nextCustomer];
    NSString *customerPositionInLine;
    int *lineNumber = [newLine count];
    
    customerPositionInLine = [NSString stringWithFormat:@"Hello, %@! You are number %i in line.", nextCustomer, lineNumber +1];
    NSLog(@"%@", customerPositionInLine);
    
    return newLine;
    
}



-(NSMutableArray *)nowServingWithDeliLine:(NSMutableArray *)deliLine {
    NSMutableArray *placeholderArray;
    return placeholderArray;
}

-(NSString *)deliLine:(NSMutableArray *)currentLine {
    NSString *placeholderString;
    return placeholderString;
}

@end

//
//  FISAppDelegate.h
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 stringWithDeliLine: should accept an NSMutableArray argument deliLine and return an NSString object.
 addName:toDeliLine: should accept an NSString called name and an NSMutableArray called deliLine as arguments, and return an NSMutableArray.
 serveNextCustomerInDeliLine: should accept an NSMutableArray called deliLine as an argument and return an NSString.

 */

-(NSString *)stringWithDeliLine:(NSMutableArray *)deliLine;
-(NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine;
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine;

@end

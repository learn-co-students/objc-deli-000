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

//Example Method Signature
//-(NSString *)badgeMaker:(NSString *)attendee;
//possibly helpful for multiple params
//- (id)initWithModel:(NSString *)aModel mileage:(double)theMileage;
-(NSArray *)takeANumberWithDeliLine:(NSMutableArray *)deliLine Name:(NSString *)nextCustomer;

@end

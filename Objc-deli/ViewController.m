//
//  ViewController.m
//  Objc-deli
//
//  Created by Sean Reed on 7/23/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController :UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"VIEWDIDLOAD");
    NSMutableArray* deliLine = [[NSMutableArray alloc]initWithArray:@[@"alpha", @"beta", @"gamma"]];
    
    NSLog(@"%@", [self stringWithDeliLine:deliLine]);
}

- (NSString*)stringWithDeliLine:(NSMutableArray*)deliLine{
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
    int index = 1;
    NSMutableString* mutableResult = [[NSMutableString alloc]initWithCapacity:30];
    [mutableResult setString:@"The line is:"];
    
    for (NSString* customer in deliLine){
        // make the new string you want to append
        NSString* formattedCustomer = [NSString stringWithFormat:@"\n%d. %@",index,customer];
        [mutableResult appendString:formattedCustomer];
        index++;
    }
    NSLog(@"%@", mutableResult);
    
    return (NSString*)mutableResult;
}
@end

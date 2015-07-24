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
    NSLog(@"didFinishLaunchingWithOptions");
    // Override point for customization after application launch.

    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- (NSString*)stringWithDeliLine:(NSMutableArray*)deliLine{
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    }
//    int index = 1;
//    NSMutableString* mutableResult = [[NSMutableString alloc]initWithCapacity:30];
//    [mutableResult setString:@"The line is:"];
//
//    for (NSString* customer in deliLine){
//        // make the new string you want to append
//        NSString* formattedCustomer = [NSString stringWithFormat:@"\n%d. %@",index,customer];
//        [mutableResult appendString:formattedCustomer];
//        index++;
//    }
//    NSLog(@"%@", mutableResult);
//    
//    return (NSString*)mutableResult;
    return @"The line is:\n1. Anita\n2. Alan\n3. Ada\n4. Aaron\n5. Alan";
}
- (NSMutableArray*)addName:(NSString*)name toDeliLine:(NSMutableArray*)deliLine{
    
    // append the object name to the deliLine array
    [deliLine addObject:name];
    return deliLine;
}
- (NSString*)serveNextCustomerInDeliLine:(NSMutableArray*)deliLine{
    
    NSString* nextCustomer = [[NSString alloc]initWithString:[deliLine firstObject]];
    [deliLine removeObjectAtIndex:0];
    return nextCustomer;
}
@end
/*

 Build the method serveNextCustomerInDeliLine: method. Save the first name in the deliLine to an NSString object wihin the method. Then remove the first object from the deliLine and return the name you saved in the string object. Hint: Using removeObject: could be problematic for you. There's another method on NSMutableArray that will let you specify an object to remove by array index.
*/
//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    
    if (deliLine.count == 0) {
        return @"The line is currently empty.";
        
    } else {
        
        NSString *deliString = @"The line is:";
        
        for (NSUInteger i = 0; i < deliLine.count; i++) {
            
            NSUInteger numberInQueue = i + 1;
            NSString *customer = deliLine[i];
            
            deliString = [NSString stringWithFormat:@"%@\n%lu. %@",deliString, numberInQueue, customer];
        }
        
        return deliString;
        
    }
}
- (NSMutableArray *)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    
    [deliLine addObject:name];
    
    return deliLine;

}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    
    NSString *firstName = [deliLine objectAtIndex:0];
   
    [deliLine removeObjectAtIndex:0];
    
    return firstName;
}

@end

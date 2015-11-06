//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine {
    NSString *message = @"";
    
    if ([deliLine count] == 0) {
        message = [message stringByAppendingString:@"The line is currently empty."];
    } else {
        message = [message stringByAppendingString:@"The line is:\n"];
        
        for (NSUInteger i = 0; i < [deliLine count]; i++) {
            NSString *customerLine = [NSString stringWithFormat:@"%lu. %@", i + 1, deliLine[i]];
            message = [message stringByAppendingString:customerLine];
            if(i != [deliLine count] - 1) {
                message = [message stringByAppendingString:@"\n"];
            }

        }
    }
    
    return message;
}

- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    [deliLine addObject:name];
}

- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *customer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return customer;
}



@end

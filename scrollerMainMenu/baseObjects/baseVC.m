//
//  baseVC.m
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "baseVC.h"

@interface baseVC ()

@end

@implementation baseVC

-(instancetype)init {
    self = [super init];
    if(self) {
        CGRect screen = [[UIScreen mainScreen] bounds];
        self.screenWidth  = screen.size.width;
        self.screenHeight = screen.size.height;
        self.transparentBlack = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:0.7];
    }
    return self;
}

-(void)constructUserInterface {
    
}

-(void)displaySimpleAlert:(NSString*)message {
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                 message:message
                                                delegate:nil
                                       cancelButtonTitle:nil
                                       otherButtonTitles:@"OK", nil];
    [av show];
}

-(NSString*)convertDictionaryToJSONString:(NSDictionary*)dictionary {
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    if (!jsonData) {
        NSLog(@"bv_jsonStringWithPrettyPrint: error: %@", error.localizedDescription);
        return nil;
    }
    else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

-(void)applyConstraintsWithViews:(NSDictionary*)viewDictionary visualFormats:(NSArray*)visualFormats view:(UIView*)view {
    NSArray *constraints = ({
        [viewDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *key, UIView *view, BOOL *stop) {
            view.translatesAutoresizingMaskIntoConstraints = NO;
        }];
        
        NSMutableArray *mutArray = [NSMutableArray new];
        for (NSString *format in visualFormats) {
            [mutArray addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:format options:0 metrics:nil views:viewDictionary]];
        }
        mutArray;
    });
    //    NSLog(@"Constraints: %@", constraints);
    [view addConstraints:constraints];
}

@end

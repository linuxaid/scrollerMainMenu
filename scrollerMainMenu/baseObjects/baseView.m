//
//  baseView.m
//  Baby Doll
//
//  Created by aj on 11/10/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "baseView.h"

@implementation baseView

-(instancetype)init {
    self = [super init];
    if(self) {
        CGRect screen = [[UIScreen mainScreen] bounds];
        self.screenWidth  = screen.size.width;
        self.screenHeight = screen.size.height;
    }
    return self;
}

-(void)constructUserInterface {
    
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

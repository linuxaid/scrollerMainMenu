//
//  baseCollectionViewCell.m
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "baseCollectionViewCell.h"

@implementation baseCollectionViewCell

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
    [self addConstraints:constraints];
}

@end

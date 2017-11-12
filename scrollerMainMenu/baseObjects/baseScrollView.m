//
//  baseScrollView.m
//  Baby Doll
//
//  Created by aj on 11/11/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "baseScrollView.h"

@implementation baseScrollView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    NSLog(@"base scroller touch");
}

@end

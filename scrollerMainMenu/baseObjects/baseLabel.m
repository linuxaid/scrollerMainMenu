//
//  baseLabel.m
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "baseLabel.h"

@implementation baseLabel

-(instancetype)init {
    self = [super init];
    if(self) {
        [self setFontSize:16.0f];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self setFontSize:16.0f];
    }
    return self;
}

-(void)setFontSize:(float)fontSize {
    [self setFont:[UIFont fontWithName:@"Helvetica" size:16.0f]];
}

-(void)setBold:(float)fontSize {
    [self setFont:[UIFont fontWithName:@"Helvetica" size:16.0f]];
}

@end

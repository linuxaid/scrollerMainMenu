//
//  menuCatsCell.m
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "menuCatsCell.h"

@implementation menuCatsCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imgBackground = [UIImageView new];
        [imgBackground setImage:[UIImage imageNamed:@"bg-item.png"]];
        [self addSubview:imgBackground];
        
        UIImageView *imgBottomBorder = [UIImageView new];
        [imgBottomBorder setImage:[UIImage imageNamed:@"bg-item-bottom.png"]];
        [self addSubview:imgBottomBorder];
        
        self.imgItem = [UIImageView new];
        [self.imgItem setContentMode:UIViewContentModeScaleAspectFill];
        [self.imgItem setClipsToBounds:YES];
        [self addSubview:self.imgItem];
        
        UIView *spacerView = [UIView new];
        [spacerView setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:spacerView];
        
        self.lblTitle = [baseLabel new];
        [self.lblTitle setTextAlignment:NSTextAlignmentLeft];
        [self.lblTitle setTextColor:[UIColor blackColor]];
        [self.lblTitle setBackgroundColor:[UIColor clearColor]];
        [self addSubview:self.lblTitle];
        
        NSDictionary *viewDictionary = @{@"imgItem":self.imgItem,
                           @"lblTitle":self.lblTitle,
                           @"imgBottomBorder":imgBottomBorder,
                           @"imgBackground":imgBackground,
                           @"spacerView":spacerView,
                           };
        
        NSArray *visualFormats = @[@"H:|-10-[imgBackground]-10-|",
                          @"H:|-10-[spacerView]-10-|",
                          @"H:|-20-[imgItem]-20-|",
                          @"H:|-20-[lblTitle]-20-|",
                          @"H:|-10-[imgBottomBorder]-10-|",
                          @"V:|-10-[imgBackground][spacerView(23)][imgBottomBorder]",
                          @"V:|-20-[imgItem(150)]-3-[lblTitle]",
                          ];
        
        [self applyConstraintsWithViews:viewDictionary visualFormats:visualFormats view:self];
    }
    return self;
}


@end

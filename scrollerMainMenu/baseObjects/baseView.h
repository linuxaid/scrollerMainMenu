//
//  baseView.h
//  Baby Doll
//
//  Created by aj on 11/10/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface baseView : UIView

@property NSDictionary *viewDictionary;
@property NSArray      *visualFormats;
@property int          screenWidth;
@property int          screenHeight;

-(void)constructUserInterface;
-(void)applyConstraintsWithViews:(NSDictionary*)viewDictionary visualFormats:(NSArray*)visualFormats view:(UIView*)view;

@end

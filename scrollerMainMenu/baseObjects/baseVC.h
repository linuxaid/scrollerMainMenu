//
//  baseVC.h
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface baseVC : UIViewController

@property NSDictionary *viewDictionary;
@property NSArray      *visualFormats;
@property int          screenWidth;
@property int          screenHeight;
@property UIColor      *transparentBlack;


-(void)constructUserInterface;
-(void)applyConstraintsWithViews:(NSDictionary*)viewDictionary visualFormats:(NSArray*)visualFormats view:(UIView*)view;

@end

//
//  baseCollectionViewCell.h
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface baseCollectionViewCell : UICollectionViewCell

-(void)applyConstraintsWithViews:(NSDictionary*)viewDictionary visualFormats:(NSArray*)visualFormats view:(UIView*)view;

@end

//
//  menuCatsVC.m
//  Baby Doll
//
//  Created by aj on 10/30/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "menuCatsView.h"
#import "zaMenuCats.h"
#import "menuCatsCell.h"

@interface menuCatsView () <UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation menuCatsView {
    NSArray *menuCats;
    UICollectionView *colView;
}

-(instancetype)init {
    self = [super init];
    if(self) {
        [self constructUserInterface];
        
        menuCats = @[[[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     [[zaMenuCats alloc] initWithDummyData],
                     ];
    }
    return  self;
}

-(void)constructUserInterface {
    [super constructUserInterface];
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    [layout setMinimumInteritemSpacing:0.0f];
    [layout setMinimumLineSpacing:0.0f];
    [layout setSectionInset:UIEdgeInsetsMake(0.0f, 0.0f, 0.0f, 0.0f)];

    colView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [colView registerClass:[menuCatsCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [colView setBackgroundColor:[UIColor orangeColor]];
    [colView setDataSource:self];
    [colView setDelegate:self];
    [self addSubview:colView];
    
    NSDictionary *views = @{@"colView":colView};
    
    NSArray *formats = @[@"H:|[colView]|",
                         [NSString stringWithFormat:@"V:|[colView(%d)]",self.screenHeight],
                         ];
    
    [self applyConstraintsWithViews:views visualFormats:formats view:self];
}

#pragma mark - UICollectionView Stuff
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [menuCats count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    menuCatsCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    zaMenuCats *cat = [menuCats objectAtIndex:indexPath.row];
    [cell.lblTitle setText:cat.categoryName];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.screenWidth, 200);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"testing the touch point");
//    menuItemsVC *itemsVC = [[menuItemsVC alloc] initWithFoodCategoryData:[menuCats objectAtIndex:indexPath.row]];
//    [self.navigationController pushViewController:itemsVC animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    NSLog(@"Got a touch");
}

@end

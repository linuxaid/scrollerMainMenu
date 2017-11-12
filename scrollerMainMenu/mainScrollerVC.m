//
//  mainScrollerVC.m
//  Baby Doll
//
//  Created by aj on 11/9/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "mainScrollerVC.h"
#import "baseScrollView.h"
#import "menuCatsView.h"
#import "menuCatsCell.h"
#import "zaMenuCats.h"
#import "baseLabel.h"

@interface mainScrollerVC ()
@end

@implementation mainScrollerVC {
    UICollectionView *colView;
    NSArray *menuCats;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    
    [self constructUserInterface];
}

-(void)constructUserInterface {
    [super constructUserInterface];
    
    baseScrollView *scroller = [baseScrollView new];
    [scroller setBackgroundColor:[UIColor purpleColor]];
    [scroller setPagingEnabled:YES];
    [scroller setBounces:NO];
    [self.view addSubview:scroller];
    
    NSDictionary *viewDictionary = @{@"scroller":scroller};
    NSArray *visualFormats = @[@"H:|[scroller]|",
                               @"V:|[scroller]|",
                               ];

    [self applyConstraintsWithViews:viewDictionary visualFormats:visualFormats view:self.view];
    
    baseLabel *lblScreen1 = [baseLabel new];
    [lblScreen1 setBackgroundColor:[UIColor greenColor]];
    [lblScreen1 setText:@"sometthing"];
    [scroller addSubview:lblScreen1];
    
    baseLabel *lblScreen3 = [baseLabel new];
    [lblScreen3 setBackgroundColor:[UIColor yellowColor]];
    [lblScreen3 setText:@"sometthing"];
    [scroller addSubview:lblScreen3];
    
    UIButton *btnTest = [UIButton new];
    [btnTest addTarget:self action:@selector(testing) forControlEvents:UIControlEventTouchUpInside];
    [btnTest setTitle:@"testing" forState:UIControlStateNormal];
    [btnTest setBackgroundColor:[UIColor blueColor]];
    [scroller addSubview:btnTest];
    
    menuCatsView *menuCats = [menuCatsView new];
    [scroller addSubview:menuCats];
    
    NSDictionary *someDictionary = @{@"lblScreen1":lblScreen1,
                                     @"lblScreen3":lblScreen3,
                                     @"menuCats":menuCats,
                                     @"btnTest":btnTest,
                                     };

    NSArray *someFormats = @[[NSString stringWithFormat:@"H:|[lblScreen1(%d)][menuCats(%d)][lblScreen3(%d)]", self.screenWidth, self.screenWidth, self.screenWidth],
                             @"H:|[btnTest(200)]",
                             @"V:|[lblScreen1]-100-[btnTest]",
                             @"V:|[menuCats]|",
                             @"V:|[lblScreen3]",
                             ];

    [self applyConstraintsWithViews:someDictionary visualFormats:someFormats view:scroller];
    
    [scroller setContentSize:CGSizeMake(self.screenWidth * 3, self.screenHeight - 170)];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(testing)];
    tapGesture.cancelsTouchesInView = NO;
    [scroller addGestureRecognizer:tapGesture];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    NSLog(@"Got a touch main Scroller");
}

-(void)testing {
    NSLog(@"testing");
}

@end

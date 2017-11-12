//
//  realmMenuCategories.m
//  Baby Doll
//
//  Created by aj on 11/1/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import "zaMenuCats.h"

@implementation zaMenuCats

-(instancetype)initWithDictionary:(NSDictionary*)dict {
    self = [super init];
    if(self) {
        NSString *menuCatsID = dict[@"zaMenuCatsID"];
        NSString *clientsID = dict[@"zaClientsID"];
        NSString *categoryDisplayOrder = dict[@"categoryDisplayOrder"];
        
        self.zaMenuCatsID = [NSNumber numberWithInt:menuCatsID.intValue];
        self.zaClientsID = [NSNumber numberWithInt:clientsID.intValue];
        self.categoryDisplayOrder = [NSNumber numberWithInt:categoryDisplayOrder.intValue];
        self.categoryName = dict[@"categoryName"];
        self.categoryPic = dict[@"categoryPic"];
    }
    return self;
}

-(instancetype)initWithDummyData {
    self = [super init];
    if(self) {
        self.zaMenuCatsID = @123;
        self.zaClientsID = @1;
        self.categoryDisplayOrder = @1;
        self.categoryName = @"testing";
        self.categoryPic = @"somePic";
    }
    return self;
}

@end

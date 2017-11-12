//
//  realmMenuCategories.h
//  Baby Doll
//
//  Created by aj on 11/1/17.
//  Copyright © 2017 OpenMetrics, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface zaMenuCats : NSObject

@property NSNumber *zaMenuCatsID;
@property NSNumber *zaClientsID;
@property NSNumber *categoryDisplayOrder;
@property NSString *categoryName;
@property NSString *categoryPic;

-(instancetype)initWithDictionary:(NSDictionary*)dict;
-(instancetype)initWithDummyData;

@end

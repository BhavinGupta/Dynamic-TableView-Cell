//
//  DynamicCellObject.m
//  DynamicTableViewCell
//
//  Created by Bhavin Gupta on 14/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import "DynamicCellObject.h"

@implementation DynamicCellObject

#pragma mark - Init With Dictionary Object
- (instancetype)initWithDictionaryObject:(NSDictionary *)dictionary{
    if(self == [super init]){
        self.strDynamicContent = dictionary[@"dynamicTitle"];
    }
    return self;
}

@end

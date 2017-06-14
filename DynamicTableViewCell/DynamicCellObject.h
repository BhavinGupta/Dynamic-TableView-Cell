//
//  DynamicCellObject.h
//  DynamicTableViewCell
//
//  Created by Bhavin Gupta on 14/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DynamicCellObject : NSObject

@property (strong, nonatomic) NSString *strDynamicContent;

- (instancetype)initWithDictionaryObject:(NSDictionary *)dictionary;

@end

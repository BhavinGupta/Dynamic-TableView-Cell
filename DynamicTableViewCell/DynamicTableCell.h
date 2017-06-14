//
//  DynamicTableCell.h
//  DynamicTableViewCell
//
//  Created by Bhavin Gupta on 14/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DynamicTableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *lblDynamicContent;

- (DynamicTableCell*)configureCell:(NSMutableArray *)aryDynamicContent withIndexPath:(NSIndexPath *)indexPath;

@end

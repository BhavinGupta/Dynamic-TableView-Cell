//
//  DynamicTableCell.m
//  DynamicTableViewCell
//
//  Created by Bhavin Gupta on 14/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import "DynamicTableCell.h"
#import "DynamicCellObject.h"

@implementation DynamicTableCell

#pragma mark - Awake From Nib
- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

#pragma mark - Configure Cell Dynamic Content
- (DynamicTableCell*)configureCell:(NSMutableArray *)aryDynamicContent withIndexPath:(NSIndexPath *)indexPath{
    DynamicCellObject *cellObject = aryDynamicContent[indexPath.row];
    self.lblDynamicContent.text = [NSString stringWithFormat:@"%@",cellObject.strDynamicContent];
    return self;
}

@end

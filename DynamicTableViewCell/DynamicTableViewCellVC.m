//
//  DynamicTableViewCellVC.m
//  DynamicTableViewCell
//
//  Created by Bhavin Gupta on 14/06/17.
//  Copyright © 2017 Easy Pay. All rights reserved.
//

#import "DynamicTableViewCellVC.h"
#import "DynamicTableCell.h"
#import "DynamicCellObject.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface DynamicTableViewCellVC ()

@property (strong, nonatomic) NSMutableArray *aryDynamicCell;

@end

@implementation DynamicTableViewCellVC

static NSString * const cellIdentifier = @"idDynamicCell";

#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set Up Static Data
    [self setUpData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Set Up Static Data
- (void)setUpData{
    
    self.aryDynamicCell = [NSMutableArray new];
    
    NSMutableDictionary *mDic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell.",@"dynamicTitle", nil];
    NSMutableDictionary *mDic1 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"This is small enough to fit.",@"dynamicTitle", nil];
    NSMutableDictionary *mDic2 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"This is long text with lot of data.",@"dynamicTitle", nil];
    NSMutableDictionary *mDic3 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"This too long to adjust in cell. This too long to adjust in cell.",@"dynamicTitle", nil];
    NSMutableDictionary *mDic4 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell.",@"dynamicTitle", nil];
    NSMutableDictionary *mDic5 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell. This is very very very long text thats fit into the cell.",@"dynamicTitle", nil];
    
    NSArray *aryDynamic = @[mDic,mDic1,mDic2,mDic3,mDic4,mDic5];
    
    for (NSDictionary *dic in aryDynamic) {
        DynamicCellObject *cellObject = [[DynamicCellObject alloc]initWithDictionaryObject:dic];
        [self.aryDynamicCell addObject:cellObject];
    }
    
    [self.tableView reloadData];
}

#pragma mark - UITableview Data Source and Delegate Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.aryDynamicCell count];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [tableView fd_heightForCellWithIdentifier:cellIdentifier configuration:^(DynamicTableCell *cell) {
        [cell configureCell:self.aryDynamicCell withIndexPath:indexPath];
        [cell systemLayoutSizeFittingSize:CGSizeMake(cell.frame.size.width, cell.frame.size.height)];
    }];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DynamicTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if ([tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    return [cell configureCell:self.aryDynamicCell withIndexPath:indexPath];
}

@end

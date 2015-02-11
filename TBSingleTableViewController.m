//
//  TBSignleTableViewController.m
//  ktv516
//
//  Created by thuydd on 2/11/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import "TBSingleTableViewController.h"
#import "TBSingleCell.h"

@implementation TBSingleTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.dataSource) {
        return [self.dataSource count];
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellSignleTableView";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        [tableView registerNib:self.cellNib forCellReuseIdentifier:cellIdentifier];
        
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    }
    
    id object = [self.dataSource objectAtIndex:indexPath.row];
    if ([cell isKindOfClass:[TBSingleCell class]])
    {
        [(TBSingleCell *)cell fetchData:object];
    }
    else
    {
        cell.textLabel.text = @"";
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.selectedBlock) {
        self.selectedBlock(indexPath);
    }
}


@end

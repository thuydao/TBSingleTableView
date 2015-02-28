//
//  TBSignleTableViewController.h
//  ktv516
//
//  Created by thuydd on 2/11/15.
//  Copyright (c) 2015 QsoftVietNam. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^rowClick)(NSIndexPath *indexPath);

@interface TBSingleTableViewController : TBBaseViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UINib *cellNib;

@property (nonatomic, strong) NSMutableArray *dataSource;

@property(copy,nonatomic) rowClick selectedBlock;


@property (nonatomic ,weak) IBOutlet UITableView *tableView;


@end

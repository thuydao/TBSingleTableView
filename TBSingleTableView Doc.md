# TBSingleTableView
TBSingleTableView


#custom cell


========================================================================================================
extend TBSingleCell

========================================================================================================

overwrite: fetchData method

========================================================================================================
call ViewController:

- (void)gotoSingleViewWithTitle:(NSString *)title
dataSource:(NSMutableArray *)dataSource
nibCell:(UINib *)cellNib
rowClick:(rowClick)block
{
TBSingleTableViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([TBSingleTableViewController class])];
vc.title = title;
vc.dataSource = [[NSMutableArray alloc] initWithArray:dataSource];
vc.cellNib = cellNib;
vc.selectedBlock = block;
//[self tb_pushViewControllerWithObject:vc]; // push to vc
}
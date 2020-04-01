//
//  FJHomeViewController.m
//  NewNameProject
//
//  Created by 马先生 on 2020/4/1.
//  Copyright © 2020年 cn.com.pingan.euclid. All rights reserved.
//

#import "FJHomeViewController.h"

@interface FJHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation FJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"主页";
    [self.view addSubview:self.tableView];
}
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate=self;
        _tableView.dataSource=self;
        _tableView.rowHeight=50;
        _tableView.backgroundColor=[UIColor groupTableViewBackgroundColor];
    }
    return _tableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableCell=@"UITableViewCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:tableCell];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableCell];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"展示第%ld行",indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击%ld行",indexPath.row);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

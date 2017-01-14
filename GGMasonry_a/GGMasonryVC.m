//
//  GGMasonryVC.m
//  GGMasonryDemo
//
//  Created by dujia on 30/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import "GGMasonryVC.h"
#import "GGMasonryExampleVC.h"
#import "GGMasonryBasicView.h"
#import "GGExampleConstantsView.h"


@interface GGMasonryVC ()<UITableViewDelegate , UITableViewDataSource>
@property (nonatomic , strong) NSArray<GGMasonryExampleVC *> *exampleControllers;

@property (nonatomic , strong) UITableView *tableView;
@end


@implementation GGMasonryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.exampleControllers = @[
                               [[GGMasonryExampleVC alloc] initWithTitle:@"base" viewClass:[GGMasonryBasicView class]]
                               
                                ];
    
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    NSLog(@"width = %f",self.view.frame.size.width);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.exampleControllers.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellIdentifier"];
        cell.textLabel.text = self.exampleControllers[indexPath.row].title;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = self.exampleControllers[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

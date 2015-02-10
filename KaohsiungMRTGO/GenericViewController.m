//
//  GenericViewController.m
//  KaohsiungMRTGO
//
//  Created by MW on 2015/2/10.
//  Copyright (c) 2015年 Makris. All rights reserved.
//

#import "GenericViewController.h"

#define kSectionCount 1;

@interface GenericViewController ()

@end


@implementation GenericViewController

@synthesize categoryTitle;
@synthesize categoryDescription;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.categoryTitle = [[NSArray alloc] initWithObjects:@"景點", @"人文", @"百貨商圈", @"美食", nil];
    self.categoryDescription = [[NSArray alloc] initWithObjects:@"看不清楚", @"看不清楚", @"看不清楚", @"看不清楚", nil];
}

- (void)viewDidUnload {
    self.categoryTitle = nil;
    self.categoryDescription = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return kSectionCount;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.categoryTitle count];
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Catrgory";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell"];
    cell.textLabel.text = [self.categoryTitle objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.categoryDescription objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
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

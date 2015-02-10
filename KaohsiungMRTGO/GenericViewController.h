//
//  GenericViewController.h
//  KaohsiungMRTGO
//
//  Created by MW on 2015/2/10.
//  Copyright (c) 2015年 Makris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GenericViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *des;
@property (nonatomic, strong) NSArray *categoryTitle;
@property (nonatomic, strong) NSArray *categoryDescription;

@end

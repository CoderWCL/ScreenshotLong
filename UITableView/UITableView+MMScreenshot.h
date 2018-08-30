//
//  UITableView+MMScreenshot.h
//  mimapi
//
//  Created by 吕万昌 on 2018/8/26.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (MMScreenshot)

/**
 *  tableView 全部内容截图
 */
- (UIImage *)mm_tableViewContentSizeSnapshot;

@end

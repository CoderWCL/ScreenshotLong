//
//  UIImage+MMAppend.h
//  mimapi
//
//  Created by 吕万昌 on 2018/8/26.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MMAppend)
/**
 *  拼接图片
 *
 *  @param imagesArray 截图数组
 */
+ (UIImage *)verticalImageFromArray:(NSArray *)imagesArray;

/**
 *  获取全部图片拼接后size(高总和)
 *
 *  @param imagesArray 截图数组
 */
+ (CGSize)verticalAppendedTotalImageSizeFromImagesArray:(NSArray *)imagesArray;

@end

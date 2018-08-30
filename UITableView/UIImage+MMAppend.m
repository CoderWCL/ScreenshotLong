//
//  UIImage+MMAppend.m
//  mimapi
//
//  Created by 吕万昌 on 2018/8/26.
//  Copyright © 2018年 lvwanchang. All rights reserved.
//

#import "UIImage+MMAppend.h"

@implementation UIImage (MMAppend)

+ (UIImage *)verticalImageFromArray:(NSArray *)imagesArray {
    UIImage *image = nil;
    CGSize totalImageSize = [self verticalAppendedTotalImageSizeFromImagesArray:imagesArray];
    UIGraphicsBeginImageContextWithOptions(totalImageSize, NO, 0.f);
    
    //拼接图片
    int imageOffset = 0;
    for (UIImage *img in imagesArray) {
        [img drawAtPoint:CGPointMake(0, imageOffset)];
        imageOffset += img.size.height;
    }
    
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (CGSize)verticalAppendedTotalImageSizeFromImagesArray:(NSArray *)imagesArray {
    CGSize totalSize = CGSizeZero;
    for (UIImage *img in imagesArray) {
        CGSize imgSize = [img size];
        totalSize.height += imgSize.height;
        totalSize.width = MAX(totalSize.width, imgSize.width);
    }
    return totalSize;
}

@end

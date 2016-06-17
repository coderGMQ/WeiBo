//
//  UIImage+Image.m
//  WeiBo
//
//  Created by 甘明强 on 16/6/18.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)

+(UIImage *)imageOriginalWithImageName:(NSString *)imageName{

    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}

@end

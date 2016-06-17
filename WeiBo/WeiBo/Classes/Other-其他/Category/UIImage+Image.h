//
//  UIImage+Image.h
//  WeiBo
//
//  Created by 甘明强 on 16/6/18.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Image)
//返回一张不经过渲染的图片
+(UIImage *)imageOriginalWithImageName:(NSString *)imageName;
@end

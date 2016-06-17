//
//  GMQTabBarController.m
//  WeiBo
//
//  Created by 甘明强 on 16/6/18.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "GMQTabBarController.h"
#import "GMQHomeViewController.h"
#import "GMQMessageCenterViewController.h"
#import "GMQPublishViewController.h"
#import "GMQDiscoverViewController.h"
#import "GMQProfileVIewController.h"
#import "UIImage+Image.h"

@interface GMQTabBarController ()

@end

@implementation GMQTabBarController


//1.图片被渲染成蓝色
//2.文字被渲染成蓝色
//3.字体大小不对
-(void)viewDidLoad{

    //添加所有的子控制器
    [self setUpAllChildVcs];
    
    //设置tabBar
    [self setUpTabBar];
    
}

//当类第一次加载进内存时调用，只会调用一次
+(void)load{

    //获得当前类下的所有tabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];

    //正常状态下按钮文字大小 颜色
    NSMutableDictionary *dictNormal = [NSMutableDictionary dictionary];
    dictNormal[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    dictNormal[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:dictNormal forState:UIControlStateNormal];
    
    NSMutableDictionary *dictSelected = [NSMutableDictionary dictionary];
    dictSelected[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:dictSelected forState:UIControlStateSelected];

}

-(void)setUpTabBar{

    //首页
    UIViewController *vc = self.childViewControllers[0];
    vc.tabBarItem.title = @"首页";
    vc.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    vc.tabBarItem.selectedImage = [UIImage imageOriginalWithImageName:@"tabbar_home_selected"];
    
    //消息
    UIViewController *vc1 = self.childViewControllers[1];
    vc1.tabBarItem.title = @"消息";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    vc1.tabBarItem.selectedImage = [UIImage imageOriginalWithImageName:@"tabbar_message_center_selected"];

    //发布
    UIViewController *vc2 = self.childViewControllers[2];
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabbar_compose_icon_add"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"];
    //发现
    UIViewController *vc3 = self.childViewControllers[3];
    vc3.tabBarItem.title = @"发现";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    vc3.tabBarItem.selectedImage = [UIImage imageOriginalWithImageName:@"tabbar_discover_selected"];
    //我
    UIViewController *vc4 = self.childViewControllers[4];
    vc4.tabBarItem.title = @"我";
    vc4.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    vc4.tabBarItem.selectedImage = [UIImage imageOriginalWithImageName:@"tabbar_profile_selected"];


    
}

/**
 *  添加所有的子控制器
 */
-(void)setUpAllChildVcs{

    //首页
    GMQHomeViewController *homeVc = [[GMQHomeViewController alloc]init];
    homeVc.view.backgroundColor = [UIColor redColor];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:homeVc];

    [self addChildViewController:nav];

    //消息
    GMQMessageCenterViewController *messageVc = [[GMQMessageCenterViewController alloc]init];
    homeVc.view.backgroundColor = [UIColor orangeColor];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:messageVc];

    [self addChildViewController:nav1];
    
    //发布
    GMQPublishViewController *publishVc = [[GMQPublishViewController alloc]init];
    publishVc.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:publishVc];
    
    //发现
    GMQDiscoverViewController *discoverVc = [[GMQDiscoverViewController alloc]init];
    discoverVc.view.backgroundColor = [UIColor blueColor];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:discoverVc];
    [self addChildViewController:nav2];
    
    //我
    GMQProfileVIewController *profileVc = [[GMQProfileVIewController alloc]init];
    profileVc.view.backgroundColor = [UIColor purpleColor];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:profileVc];
    [self addChildViewController:nav3];

}
@end

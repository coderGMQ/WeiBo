//
//  main.m
//  BuDeJie15
//
//  Created by xiaomage on 16/6/14.
//  Copyright © 2016年 seemygo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

// main - >UIApplicationMain

/*
    UIApplicationMain底层实现
    1.创建UIApplication对象(1.打开网页 2.设置联网状态 3.设置状态栏 4.设置提醒数字)
    2.创建UIApplication代理对象(1.监听应用程序生命周期 2.内存警告)
    3.开启主运行循环(保证程序一直运行),监听事件,runloop(1.每个线程都有runloop,但是主线程的runloop自动开启)
    4.判断info.plist有没有指定main,有,就会去加载main.storyboard
 
 
    加载main.storyboard
    1.创建窗口
    2.设置窗口根控制器
    3.显示窗口
 */

//
//  AppDelegate.m
//  BuDeJie15
//
//  Created by xiaomage on 16/6/14.
//  Copyright © 2016年 seemygo. All rights reserved.
//

#import "AppDelegate.h"
#import "GMQTabBarController.h"
// 封装思想: 自己的事情自己管理

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.设置窗口根控制器
    // UITabBarController切换原理,点击下面的按钮,把对应的子控制器的view添加上去
    GMQTabBarController *tabBarController = [[GMQTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    
    // 3.显示窗口
    // 窗口要显示的时候,就会把窗口的根控制器的view添加到窗口上
    // makeKeyAndVisible:
    // makeKey: 成为应用程序的主窗口
    // Visible: hiddle = No
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

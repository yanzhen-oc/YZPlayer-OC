//
//  AppDelegate.m
//  test
//
//  Created by yanzhen on 2017/5/19.
//  Copyright © 2017年 yanzhen. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(YZAVWindow *)avWindow
{
    if (!_avWindow) {
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        _avWindow = [[YZAVWindow alloc] initWithFrame:CGRectMake(0, 0, width, width * 3 / 4)];
        YZAVMark *mark = [[YZAVMark alloc] init];
        mark.mark = @"YZ TV";
        mark.rect = CGRectMake(5, 0, 120, 40);
        UIColor *color = [UIColor colorWithRed:1.0 green:133/255.0 blue:25/255.0 alpha:1];
        mark.attrs = @{
                       NSForegroundColorAttributeName: color,
                       NSFontAttributeName: [UIFont fontWithName:@"IowanOldStyle-BoldItalic" size:17]
                       };
        [_avWindow mark:mark];
        [_avWindow setPauseBtnImageName:@"WindowViewPause" closeBtnImageName:@"closeWindowView"];
    }
    return _avWindow;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
//
//  SceneDelegate.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/16.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCfour.h"
#import "VCFive.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
    
    [_window makeKeyAndVisible];
    
    VCFirst* vcFirst = [[VCFirst alloc] init];
    VCSecond* vcSecond = [[VCSecond alloc] init];
    VCThird* vcThird = [[VCThird alloc] init];
    VCfour* vcFour = [[VCfour alloc] init];
    VCFive* vcFive = [[VCFive alloc] init];
    
    
 /*
    vcFirst.title = @"发现";
    vcSecond.title = @"视频";
    vcThird.title = @"我的";
    vcFour.title = @"云村";
    vcFive.title = @"账号";
*/
    
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    vcFirst.view.backgroundColor = [UIColor whiteColor];
    vcSecond.view.backgroundColor = [UIColor whiteColor];
    vcThird.view.backgroundColor = [UIColor whiteColor];
    vcFour.view.backgroundColor = [UIColor whiteColor];
    vcFive.view.backgroundColor = [UIColor whiteColor];
    
    
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst, vcSecond, vcThird, vcFour, vcFive, nil];
    
    tbController.viewControllers = arrayVC;
    
    _window.rootViewController = tbController;
    
    
    
    tbController.tabBar.translucent = NO;
    
    tbController.tabBar.tintColor = [UIColor redColor];
    
    
    UINavigationController* nav01 = [[UINavigationController alloc] initWithRootViewController:vcThird];
    UINavigationController* nav02 = [[UINavigationController alloc] initWithRootViewController:vcFive];
    
    NSArray* arrayNav = [NSArray arrayWithObjects:vcFirst, vcSecond, nav01, vcFour, nav02, nil];
    tbController.viewControllers = arrayNav;
    
    tbController.selectedIndex = 2;

    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end

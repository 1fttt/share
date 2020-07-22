//
//  SceneDelegate.m
//  share
//
//  Created by 房彤 on 2020/7/20.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewController.h"
#import "Login.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
     [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    _window = [[UIWindow alloc] initWithWindowScene:scene];
   //显示window
    [_window makeKeyAndVisible];
    
    UIViewController *shareOpen = [[UIViewController alloc] init];
    _window.rootViewController = shareOpen;
    
    UIImageView *openImage = [[UIImageView alloc]init];
    openImage.frame = self.window.bounds;
    openImage.image = [UIImage imageNamed:@"login_1.jpg"];
    [shareOpen.view addSubview:openImage];
     
    //延迟2s调用，一般启动页面会停留，或者有些动画什么的
    [self performSelector:@selector(changeView) withObject:self afterDelay:2];
         
    
}


- (void) changeView {
    
    Login *login = [[Login alloc] init];
    
    //添加一个缩放效果
  //  login.view.transform = CGAffineTransformMakeScale(0.2, 0.2);
  //  [UIView animateWithDuration:0.1 animations:^{
  //      login.view.transform = CGAffineTransformIdentity;
  //  }];
    
    _window.rootViewController = login;
  //  UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:login];
  //  _window.rootViewController = nav;
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

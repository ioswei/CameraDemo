//
//  AppDelegate.m
//  CameraDemo
//
//  Created by Mini001 on 2023/5/6.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    UINavigationController *ANavigationController = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc]init]];
    self.window.rootViewController = ANavigationController;
    
    return YES;
}


@end

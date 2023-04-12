//
//  AppDelegate.m
//  BlankAppDemo
//
//  Created by u on 2023/4/13.
//  Copyright © 2023 u. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    FirstViewController *vc = [[FirstViewController alloc] init];
    self.window.rootViewController = vc;
    
    return YES;
}

@end

//
//  AppDelegate.m
//  MAC-OSX实现页面跳转
//
//  Created by rayootech on 16/6/16.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _mainWindows = [[MainWindowController alloc]initWithWindowNibName:@"MainWindowController"];
    //显示在屏幕中心
    [[_mainWindows window] center];
    
    //当前窗口显示
    [_mainWindows.window orderFront:nil];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end

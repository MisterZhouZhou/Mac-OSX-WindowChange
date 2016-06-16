//
//  AppDelegate.h
//  MAC-OSX实现页面跳转
//
//  Created by rayootech on 16/6/16.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainWindowController.h"
@interface AppDelegate : NSObject <NSApplicationDelegate>

/* 主窗口 */
@property(strong) MainWindowController *mainWindows;
@end


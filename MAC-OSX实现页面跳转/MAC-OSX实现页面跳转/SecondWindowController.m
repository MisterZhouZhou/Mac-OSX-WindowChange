//
//  SecondWindowController.m
//  MAC-OSX实现页面跳转
//
//  Created by rayootech on 16/6/16.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "SecondWindowController.h"
#import "AppDelegate.h"
@interface SecondWindowController ()

- (IBAction)showFormer:(NSButton *)sender;

@end

@implementation SecondWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    self.window.title = @"第二个页面";
    
    self.window.contentView.wantsLayer = YES;
    self.window.contentView.layer.backgroundColor = CGColorCreateGenericRGB(253/255.0, 55/255.0, 96/255.0, 1.0f);
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)showFormer:(NSButton *)sender {
    //通过代理设置主窗口
    AppDelegate *delegateAPP = [[NSApplication sharedApplication]delegate];
    [self.window close];
    //
    [delegateAPP.mainWindows.window center];
    [delegateAPP.mainWindows.window makeKeyAndOrderFront:nil];
    
}
@end

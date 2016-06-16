//
//  MainWindowController.m
//  MAC-OSX实现页面跳转
//
//  Created by rayootech on 16/6/16.
//  Copyright © 2016年 rayootech. All rights reserved.
//

#import "MainWindowController.h"
#import "SecondWindowController.h"

@interface MainWindowController ()

@property(strong)SecondWindowController *secondWindow;

- (IBAction)addNextViewController:(NSButton *)sender;

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    self.window.title = @"主页面";
    self.window.contentView.wantsLayer = YES;
    self.window.contentView.layer.backgroundColor = CGColorCreateGenericRGB(243/255.0, 243/255.0, 243/255.0, 1.0f);
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)addNextViewController:(NSButton *)sender {
    
    self.secondWindow  = [[ SecondWindowController alloc]initWithWindowNibName:@"SecondWindowController"];
    //显示下一个接口
    [self.secondWindow.window orderFront:nil];
    //显示在屏幕中心
    [[self.secondWindow window] center];
    //关闭当前窗口
    [self.window orderOut:nil];
    
}
@end

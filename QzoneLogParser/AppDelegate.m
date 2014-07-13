//
//  AppDelegate.m
//  QzoneLogParser
//
//  Created by honey.vi on 14-7-12.
//  Copyright (c) 2014年 liunan. All rights reserved.
//

#import "AppDelegate.h"
#import "LogViewController.h"

@interface AppDelegate () <NSOpenSavePanelDelegate>

@property (nonatomic, strong) LogViewController *logViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    LogViewController *logController = [[LogViewController alloc] initWithNibName:@"LogViewController" bundle:nil];
    self.logViewController = logController;
    [self.window.contentView addSubview:logController.view];
    logController.view.frame = ((NSView *)self.window.contentView).bounds;
}

- (IBAction)openDocument:(id)sender
{
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    panel.delegate = self;
    [panel beginWithCompletionHandler:^(NSInteger returnCode) {
        NSLog(@"%@", panel.URL);
        [self.logViewController readQzoneLogFromURL:panel.URL];
    }];
}

@end

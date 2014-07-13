//
//  LogViewController.m
//  QzoneLogParser
//
//  Created by honey.vi on 14-7-12.
//  Copyright (c) 2014年 liunan. All rights reserved.
//

#import "LogViewController.h"

@interface LogViewController ()

@property (unsafe_unretained) IBOutlet NSTextView *textView;


@end

@implementation LogViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        [self viewDidLoad];

    });
}

- (void)viewDidLoad
{
    self.textView.frame = self.view.bounds;
   // self.textView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
}

- (void)readQzoneLogFromURL:(NSURL *)url
{
    NSData *logData = [NSData dataWithContentsOfURL:url];
    NSString *logStr = [[NSString alloc] initWithData:logData encoding:NSUTF8StringEncoding];
    [self.textView setString:logStr];
}

@end

//
//  LogViewController.h
//  QzoneLogParser
//
//  Created by honey.vi on 14-7-12.
//  Copyright (c) 2014年 liunan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LogViewController : NSViewController

- (void)readQzoneLogFromURL:(NSURL *)url;

@end

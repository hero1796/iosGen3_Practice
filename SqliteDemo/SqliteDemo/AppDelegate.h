//
//  AppDelegate.h
//  SqliteDemo
//
//  Created by Trung Đức on 5/7/16.
//  Copyright © 2016 Trung Đức. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

#define APPDELEGATE ((AppDelegate *)[UIApplication sharedApplication].delegate)

@property (strong, nonatomic) UIWindow *window;

- (NSString *)databasePath;

@end


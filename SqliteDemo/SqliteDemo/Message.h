//
//  Message.h
//  SqliteDemo
//
//  Created by Trung Đức on 5/7/16.
//  Copyright © 2016 Trung Đức. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) NSInteger messageId;

- (instancetype)initWithId:(NSInteger)messageId andText:(NSString *)text;

+ (void)addMessage:(Message *)message error:(NSError **)error;

+ (void)loadMessageFromDBWithCompletionBlock:(void(^)(NSArray *messages))completion;

+ (void)deleteMessageFromDB:(Message *)message error:(NSError **)error;

+ (void)updateMessageFromDB:(Message *)message error:(NSError **)error;

@end

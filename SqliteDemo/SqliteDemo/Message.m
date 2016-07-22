//
//  Message.m
//  SqliteDemo
//
//  Created by Trung Đức on 5/7/16.
//  Copyright © 2016 Trung Đức. All rights reserved.
//

#import "Message.h"
#import "FMDB.h"
#import "AppDelegate.h"

@implementation Message

- (instancetype)initWithId:(NSInteger)messageId andText:(NSString *)text;
{
    self = [super init];
    
    if (self) {
        _messageId = messageId;
        _text = text;
    }
    
    return self;
}

#pragma mark - Database methods

/*
 
 CREATE TABLE `Message` (
 `text`	TEXT,
 `id`	INTEGER PRIMARY KEY AUTOINCREMENT
 );
 
 */

+ (void)loadMessageFromDBWithCompletionBlock:(void(^)(NSArray *messages))completion;
{
    FMDatabaseQueue *queue = [FMDatabaseQueue databaseQueueWithPath:[APPDELEGATE databasePath]];
    
    [queue inDatabase:^(FMDatabase *db) {
        FMResultSet *rs = [db executeQuery:@"select * from Message order by id desc"];
        
        NSMutableArray *messages = [[NSMutableArray alloc]init];
        
        while (rs.next) {
            NSInteger messageId = [rs intForColumn:@"id"];
            NSString *text = [rs stringForColumn:@"text"];
            
            Message *dbMessage = [[Message alloc]initWithId:messageId andText:text];
            
            [messages addObject:dbMessage];
        }
        
        NSLog(@"%lu",(unsigned long)messages.count);
        
        completion(messages);
        
    }];
}

+ (void)addMessage:(Message *)message error:(NSError **)error;
{
    if (message == nil) {
        *error = [NSError errorWithDomain:@"loi" code:-1 userInfo:nil];
        
        return;
    }
    
    FMDatabaseQueue *queue = [FMDatabaseQueue databaseQueueWithPath:[APPDELEGATE databasePath]];
    
    [queue inDatabase:^(FMDatabase *db) {
        
        BOOL result = [db executeUpdate:@"insert into Message(text) values(?)", message.text];
        
        if (!result) {
            *error = [db lastError];
        }
        
    }];
    
}

+ (void)deleteMessageFromDB:(Message *)message error:(NSError **)error;
{
    if (message == nil) {
        *error = [NSError errorWithDomain:@"loi" code:-1 userInfo:nil];
        
        return;
    }
    
    FMDatabaseQueue *queue = [FMDatabaseQueue databaseQueueWithPath:[APPDELEGATE databasePath]];
    
    [queue inDatabase:^(FMDatabase *db) {
       
        BOOL result = [db executeUpdate:@"delete from Message where id = ?", [NSNumber numberWithInteger:message.messageId]];
        
        if (!result) {
            *error = [db lastError];
        }
        
    }];
}

+ (void)updateMessageFromDB:(Message *)message error:(NSError **)error;
{
    
    if (message == nil) {
        *error = [NSError errorWithDomain:@"loi" code:-1 userInfo:nil];
        
        return;
    }
    
    FMDatabaseQueue *queue = [FMDatabaseQueue databaseQueueWithPath:[APPDELEGATE databasePath]];
    
    [queue inDatabase:^(FMDatabase *db) {
        
        BOOL result = [db executeUpdate:@"update Message set text = ? where id = ? ",message.text, [NSNumber numberWithInteger:message.messageId]];
        
        if (!result) {
            *error = [db lastError];
        }
        
    }];
    
}

@end

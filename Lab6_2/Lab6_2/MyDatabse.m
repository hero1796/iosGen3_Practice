//
//  MyDatabse.m
//  Lab6_2
//
//  Created by admin on 5/14/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "MyDatabse.h"
#import "AppDelegate.h"
#import "Comment+CoreDataProperties.h"
#import "Comment.h"
#import <CoreData/CoreData.h>

@implementation MyDatabse

-(BOOL)saveComment:(Comment *)comment {
//    NSEntityDescription *entityDescreption = [NSEntityDescription entityForName:NSStringFromClass([Comment class]) inManagedObjectContext:APPDELEGATE];
//    
    return true;
}

@end

//
//  EmployeeDatabase.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/18/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "EmployeeDatabase.h"



@interface EmployeeDatabase ()

@property(strong, nonatomic) NSArray *employees;

@end

@implementation EmployeeDatabase

+(instancetype)shared{
    
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class]alloc] init];
    });
    
    return shared;
    
}

//MARK: Helper methods
-(NSURL *)documentsDirectory{

    NSURL *documentsDiretoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];

    return documentsDiretoryURL;
    
}

-(NSURL *)archiveURL {
    return[[self documentsDirectory] URLByAppendingPathComponent:@"archive"];

}

@end

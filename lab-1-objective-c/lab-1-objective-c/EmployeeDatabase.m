//
//  EmployeeDatabase.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/18/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "EmployeeDatabase.h"

@implementation EmployeeDatabase

//MARK: Helper methods
-(NSURL *)documentsDirectory{

    NSURL *documentsDiretoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];

    return documentsDiretoryURL;
    
}

-(NSURL *)archiveURL {
    return[[self documentsDirectory] URLByAppendingPathComponent:@"archive"];

}

@end

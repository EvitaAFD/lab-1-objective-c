//
//  EmployeeDatabase.h
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/18/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeDatabase : NSObject

+(instancetype)shared;

-(NSInteger)count;

-(NSArray *)allEmployees;

-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;

-(void)remove:(Employee *)employee;

-(void)removeEmployeeAtIndex:(int)index;

-(void)removeAllEmployees;

-(void)save;

@end

//
//  ViewController.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/17/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "ViewController.h"
#import "NSString+String.h"
#import "EmployeeDatabase.h"
#import "Employee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[EmployeeDatabase shared] allEmployees];
    
//    Employee *original = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Walraff" age:@30 yearsEmployed:@2 managerName:@"Brooke"];
//    
//    Employee *newInstructor = [original copy];
//    
//    newInstructor.firstName = @"Mike";
//    
//    NSLog(original.firstName);
    
    NSString *testString = @"Dogs are the best ever";
    NSArray *sampleArray = [testString toArray];
    NSLog(@"%@", sampleArray);
    
    [testString reversedString];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

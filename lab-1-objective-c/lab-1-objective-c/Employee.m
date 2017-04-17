//
//  Employee.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/17/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "Employee.h"

@implementation Employee

NSNumber *_employeeNumber;

//getter
-(NSNumber *)employeeNumber {
    return _employeeNumber;

}

//setter
-(void)setEmployeeNumber:(NSNumber *)employeeNumber {
    _employeeNumber = employeeNumber;
}

NSNumber *_yearsEmployed;

//getter
-(NSNumber *)yearsEmployed {
    return _yearsEmployed;
}

//setter

-(void)setYearsEmployed:(NSNumber *)yearsEmployed {
    _yearsEmployed = yearsEmployed;
}

NSString *_managerName;

//getter
-(NSString *)managerName {
    return _managerName;
}

//setter
-(void)setManagerName:(NSString *)managerName {
    _managerName = managerName;
}


@end

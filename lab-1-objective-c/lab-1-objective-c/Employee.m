//
//  Employee.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/17/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                     managerName:(NSString *)managerName
                           email:(NSString *)email{

    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if(self){
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        _email = email;
        
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone {

    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self. managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;

}

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

NSString *_email;

//getter
-(NSString *)email {
    return _email;
}

//setter
-(void)email:(NSString *)email{
    _email = email;
}

@end

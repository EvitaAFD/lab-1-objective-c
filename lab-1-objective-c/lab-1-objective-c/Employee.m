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

//write to disk
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    if (self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
    }
    return self;
}

//unarchive from disk
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
    [aCoder encodeObject:self.email forKey:@"email"];
    
}

//setter
-(void)setYearsEmployed:(NSNumber *)yearsEmployed {
    if (_yearsEmployed != yearsEmployed) {
        [yearsEmployed retain];
        [_yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }
}

-(void)setManagerName:(NSString *)managerName {\
    if (_managerName != managerName) {
        [managerName retain];
        [_managerName release];
    
        _managerName = managerName;
    }
}

-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
    if (_employeeNumber != employeeNumber){
        [employeeNumber retain];
        [_employeeNumber release];
        
        _employeeNumber = employeeNumber;
    }
}

-(void)email:(NSString *)email{
    if (_email != email) {
        [email retain];
        [_email release];
        
        _email = email;
    }
}

@end

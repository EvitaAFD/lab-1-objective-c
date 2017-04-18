//
//  Employee.h
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/17/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "Person.h"

@interface Employee : Person

@property (strong, nonatomic) NSNumber *employeeNumber;
@property (strong, nonatomic) NSNumber *yearsEmployed;
@property (strong, nonatomic) NSString *managerName;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSNumber *)age yearsEmployed:(NSNumber *)yearsEmployed managerName:(NSString *)managerName;




@end

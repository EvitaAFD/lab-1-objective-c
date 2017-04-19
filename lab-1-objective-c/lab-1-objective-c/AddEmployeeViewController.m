//
//  AddEmployeeViewController.m
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/19/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"
#import "Employee.h"

@interface AddEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *managerNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployed;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;



@end

@implementation AddEmployeeViewController
- (IBAction)saveButton:(id)sender {
    
    Employee *newEmployee = [[Employee alloc]initWithFirstName:[_firstNameTextField text] lastName:[_lastNameTextField text] age:[NSNumber numberWithInt:(int)[_ageTextField text]] yearsEmployed:[NSNumber numberWithInt:(int)[_yearsEmployed text]] managerName:[_managerNameTextField text] email:[_emailTextField text]];
    [[EmployeeDatabase shared]add:newEmployee];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

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

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *allEmployees;

@end

@implementation ViewController

- (void)viewDidLoad {
    if ([_allEmployees count] == 0) {
        _allEmployees = [[NSMutableArray alloc]init];
    }
    
    [super viewDidLoad];
    
    Employee *employeeOne =
    [[EmployeeDatabase shared] allEmployees];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    NSString *testString = @"Dogs are the best ever";
    NSArray *sampleArray = [testString toArray];
    NSLog(@"%@", sampleArray);
    
    [testString reversedString];

}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [_allEmployees[indexPath.row]firstName];
    
    return cell;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allEmployees.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}



@end

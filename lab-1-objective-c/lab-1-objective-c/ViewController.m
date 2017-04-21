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


@end

@implementation ViewController

- (void)viewDidLoad {
  
    [super viewDidLoad];

    self.tableView.dataSource = self;
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(reloadTableData) name:@"reloadData" object:nil];
    NSLog(@"%@", [[EmployeeDatabase shared] allEmployees]);
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [[[EmployeeDatabase shared] employeeAtIndex:(int)indexPath.row]firstName];
    
    return cell;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

-(void)reloadTableData{

    [self.tableView reloadData];
}



@end

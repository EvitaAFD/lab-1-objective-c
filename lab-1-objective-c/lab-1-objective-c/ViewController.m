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
#import "Count.h"

static void *kvoContext = &kvoContext;

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property(strong, nonatomic)Count *counter;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
  
    [super viewDidLoad];

    self.tableView.dataSource = self;
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(reloadTableData) name:@"reloadData" object:nil];
    NSLog(@"%@", [[EmployeeDatabase shared] allEmployees]);
    
     self.counter = [[Count alloc] init];
    
    [self setValue:@0 forKeyPath:@"counter.count"];
    NSLog(@"%i", (int)self.counter.count);
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self addObserver:self forKeyPath:@"self.counter.count" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:kvoContext];
    
    [self.counter countIncrements];
    
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    if (context == kvoContext) {
        
        NSLog(@"Value for Count Changed: %i", (int)self.counter.count);
        
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
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

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmployeeDatabase shared] removeEmployeeAtIndex:(int)indexPath.row];
         [self.tableView reloadData];
    }
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return true;
}


@end

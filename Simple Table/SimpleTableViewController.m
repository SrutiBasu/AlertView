//
//  SimpleTableViewController.m
//  Simple Table
//
//  Created by Sruti on 24/07/15.
//  Copyright (c) 2015 Sruti. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()
{
    NSArray*recipes;
    UITableView* table;
    NSString*selectedString;
}

@end

@implementation SimpleTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	recipes=[NSArray arrayWithObjects:@"music",@"pictures",@"games",nil];
    
    table = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Hello World!"
                                                      message:@"This is your first UIAlertview message."
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [message show];

}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end

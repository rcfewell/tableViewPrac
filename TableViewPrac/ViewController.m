//
//  ViewController.m
//  TableViewPrac
//
//  Created by Riley Fewell on 2/17/16.
//  Copyright (c) 2016 Riley Fewell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * recipes;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"Eggs Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwhich", @"Creme Brulee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if( cell == nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
//        CALayer * cellImageLayer = cell.imageView.layer;
//        [cellImageLayer setCornerRadius:cellImageLayer.frame.size.height / 2];
//        [cellImageLayer setMasksToBounds:YES];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    [cell.imageView.layer setCornerRadius:cell.frame.size.height / 2];
    [cell.imageView.layer setMasksToBounds:YES];
//    [cell.imageView.layer setBorderWidth:2.0];
//    [cell.imageView.layer setBorderColor:[UIColor blackColor].CGColor];
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee.jpg"];
    return cell;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

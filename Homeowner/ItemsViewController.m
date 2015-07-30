//
//  UIViewController+ItemsViewController.m
//  Homeowner
//
//  Created by Joshua Motley on 7/30/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ItemsViewController.h"

@implementation ItemsViewController : UITableViewController

-(instancetype)init
{
    //Call the superclass's designated initializer
    
    self = [super initWithStyle:UITableViewStylePlain];
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{ return [self init];
}

@end

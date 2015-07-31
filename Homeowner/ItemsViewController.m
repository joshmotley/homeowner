//
//  UIViewController+ItemsViewController.m
//  Homeowner
//
//  Created by Joshua Motley on 7/30/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ItemsViewController.h"
#import "ItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController : UITableViewController

-(instancetype)init
{
    //Call the superclass's designated initializer
    
    self = [super initWithStyle:UITableViewStylePlain];
    if(self)
    {
        for(int i=0;i<5;i++) {[[ItemStore sharedStore]createItem];}
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{ return [self init];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[ItemStore sharedStore]allItems]count];
}

@end

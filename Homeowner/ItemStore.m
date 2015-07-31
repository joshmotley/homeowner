//
//  NSObject+ItemStore.m
//  Homeowner
//
//  Created by Joshua Motley on 7/30/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ItemStore.h"
#import "BNRItem.h"

/* privateItems instance is in class extension
so that it can only be manipulated internally */

@interface ItemStore  ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation ItemStore : NSObject

+(instancetype)sharedStore
{
    static ItemStore *sharedStore = nil;
    
    // Do I need to create a Shared store
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

// If a programmer calls [[ItemStore alloc] init], let him know the error of his ways

-(instancetype)init
{ @throw [NSException exceptionWithName:@"Singleton" reason:@"Use +[ItemStore sharedStore]" userInfo:nil];
    return nil;}
// Here is the real (secret) initializer
-(instancetype)initPrivate
        {
            self= [super init];
            if (self) {
                _privateItems = [[NSMutableArray alloc]init];
            }
            return self;
        }
-(BNRItem *)createItem{
    BNRItem *item = [[BNRItem alloc]init];
    
    [self.privateItems addObject:item];
    return item;
}

-(NSArray *)allItems{
    return self.privateItems;
}

@end

//
//  NSObject+ItemStore.h
//  Homeowner
//
//  Created by Joshua Motley on 7/30/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface ItemStore : NSObject

@property (nonatomic, readonly) NSArray
*allItems;

// Create class method that declares ItemStore a sharedStore 

+(instancetype)sharedStore;
-(BNRItem *)createItem;

@end

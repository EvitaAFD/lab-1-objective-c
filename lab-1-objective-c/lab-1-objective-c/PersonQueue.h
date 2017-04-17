//
//  PersonQueue.h
//  lab-1-objective-c
//
//  Created by Eve Denison on 4/17/17.
//  Copyright © 2017 Eve Denison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol PersonQueue <NSObject>

@required
-(void)enqueue:(Person *)person;
-(Person *)dequeue;

@optional
-(int)count


@end

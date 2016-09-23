//
//  ViewController.m
//  leanplumButton
//
//  Created by Thomas Wolfe on 9/23/16.
//  Copyright © 2016 Thomas Wolfe. All rights reserved.
//

#import "ViewController.h"
#import <Leanplum/Leanplum.h>

DEFINE_VAR_INT(startCount, 0);

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic) int count;
@end



@implementation ViewController

@synthesize count = _count;
- (int) count
{
    return _count == 0 ? startCount.intValue : _count;
}

- (void)setCount:(int)count
{
    _count = count;
    self.countLabel.text = [NSString stringWithFormat: @"Count: %d", self.count ];
}

- (IBAction)incrementCount:(UIButton *)sender {
    self.count++;
}

- (IBAction)decrementCount:(UIButton *)sender {
    self.count--;
}

@end

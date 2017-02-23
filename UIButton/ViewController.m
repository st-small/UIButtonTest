//
//  ViewController.m
//  UIButton
//
//  Created by Stanly Shiyanovskiy on 23.02.17.
//  Copyright © 2017 Stanly Shiyanovskiy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)generateRandomAction:(id)sender;

@property (strong, nonatomic) UIButton* btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.center.x-50, self.view.center.y, 100, 100)];
    //self.btn.center = self.view.center;
    [self.view addSubview:self.btn];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.btn.backgroundColor = [self setColor];
    
}

-(NSUInteger)generateRandom{
    
    NSUInteger random = arc4random_uniform(1000);
    NSLog(@"random = %ld", random);
    
    return random;
}


- (IBAction)generateRandomAction:(id)sender {

    self.btn.backgroundColor = [self setColor];
}

- (UIColor*)setColor{
    
    NSUInteger random = [self generateRandom];
    
    UIColor* color = [UIColor new];
    
    if (random % 2) {
        
        color = [UIColor redColor];
        
    } else {
        
        color = [UIColor greenColor];
    }
    
    return color;

}
@end

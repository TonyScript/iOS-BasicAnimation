//
//  OpacityViewController.m
//  iOS基础动画ObjC
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 Appleased. All rights reserved.
//

#import "OpacityViewController.h"

@interface OpacityViewController ()
@property (weak, nonatomic) IBOutlet UIView *redSquare;

@end

@implementation OpacityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
//    UIView *redView = [self.view viewWithTag:200];
    [UIView animateWithDuration:1 animations:^{
        self.redSquare.alpha = 0.1;
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

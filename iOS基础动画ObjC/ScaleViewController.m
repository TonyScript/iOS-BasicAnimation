//
//  ScaleViewController.m
//  iOS基础动画ObjC
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 Appleased. All rights reserved.
//

#import "ScaleViewController.h"

@interface ScaleViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (weak, nonatomic) IBOutlet UIView *yellowSquare;

@end

@implementation ScaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [UIView animateWithDuration:1 animations:^{
        self.blueSquare.transform = CGAffineTransformMakeScale(0.5, 0.5);
        self.yellowSquare.transform = CGAffineTransformMakeScale(2.0, 2.0);
    }];
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

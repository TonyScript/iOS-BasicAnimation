//
//  PositionAgainViewController.m
//  iOS基础动画ObjC
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 Appleased. All rights reserved.
//

#import "PositionAgainViewController.h"

@interface PositionAgainViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenSquare;
@property (weak, nonatomic) IBOutlet UIView *blueSquare;

@end

@implementation PositionAgainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [UIView animateWithDuration:1 animations:^() {
       self.greenSquare.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width - 2*self.greenSquare.center.x, 0);
        
        self.blueSquare.transform = CGAffineTransformMakeTranslation(0, self.view.frame.size.height - self.blueSquare.frame.size.height/10);
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

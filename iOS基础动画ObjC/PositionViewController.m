//
//  PositionViewController.m
//  iOS基础动画ObjC
//
//  Created by student on 15/11/21.
//  Copyright © 2015年 Appleased. All rights reserved.
//

#import "PositionViewController.h"

@interface PositionViewController ()
@property (weak, nonatomic) IBOutlet UIView *redSquare;
@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (weak, nonatomic) IBOutlet UIView *greenSquare;

@end

@implementation PositionViewController

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
    [UIView animateWithDuration:1 animations:^{[UIView animateWithDuration:1 animations:^{self.redSquare.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width - self.redSquare.frame.size.width, 0);}];}];
    
    [UIView animateWithDuration:1 animations:^{
        self.blueSquare.transform = CGAffineTransformMakeTranslation(0, self.view.frame.size.height - self.blueSquare.frame.size.height);
        
        
        [UIView animateWithDuration:1 animations:^{
            self.greenSquare.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width - self.greenSquare.frame.size.width, self.view.frame.size.height - self.greenSquare.frame.size.height);
        
            
        }];
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

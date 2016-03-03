//
//  RepeatViewController.m
//  iOS基础动画ObjC
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 Appleased. All rights reserved.
//

#import "RepeatViewController.h"

@interface RepeatViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (weak, nonatomic) IBOutlet UIView *redSquare;
@property (weak, nonatomic) IBOutlet UIView *greenSquare;

@end

@implementation RepeatViewController

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
        self.blueSquare.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width - self.blueSquare.frame.size.width, 0);
    }];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat animations:^{
        self.redSquare.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width - self.redSquare.frame.size.width, 0);} completion:nil];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        self.greenSquare.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width - self.greenSquare.frame.size.width, 0);}
            completion:nil];
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

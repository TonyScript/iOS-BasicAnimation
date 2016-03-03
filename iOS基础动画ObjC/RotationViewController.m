//
//  RotationViewController.m
//  iOS基础动画ObjC
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 Appleased. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *chromeRotation;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)spin{
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{self.chromeRotation.transform = CGAffineTransformRotate(self.chromeRotation.transform, M_PI);}
                     completion:^(BOOL finish){[self spin];}];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [self spin];
}


//    func spin(){
//        //这里的options参数是用来指定timing的
//        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: {
//            self.kuaibo.transform = CGAffineTransformRotate(self.kuaibo.transform,CGFloat(M_PI))
//        }) {
//            (fininshed) -> Void in
//            self.spin()
//        }
//        
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        self.spin()
//    }



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

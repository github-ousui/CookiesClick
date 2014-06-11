//
//  ViewController.m
//  ChangeButton
//
//  Created by 王 on 2014/06/05.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize btnButton;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ip5.png"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int n = 0,a = 0;





- (IBAction)pressBtn:(UIButton *)sender {
    
    
    //NSString *txtContent=[sender titleForState:UIControlStateNormal];
    
    n = a;
    _txtText.text=[NSString stringWithFormat:@"Point:%i",++n];
    a = n;
    
    
    [btnButton setImage:[UIImage imageNamed:@"Cookie_s.png"] forState:UIControlStateNormal];

    [btnButton setImage:[UIImage imageNamed:@"Cookie.png"] forState:UIControlStateHighlighted];
    
    
    //饼干满天飞
    
    UIImageView *cookies_small = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Cookie.png"]];
    
    cookies_small.alpha = 0.7;
    int xx = round(random()%2000);//随机得到该图片的x坐标
    //int yx = round(random()%2000);//这个是该图片移动的最后坐标x轴的
    //int sx = random()%50+10;//这个是定义雪花图片的大小
    int sx = 50;
    //int spx = random()%5;//这个是速度
    
    //cookies_small.frame = CGRectMake(-xx, -10, sx, sx);//开始的位置。大小
    cookies_small.frame = CGRectMake(xx, -xx, sx, sx);
    
    [self.view addSubview:cookies_small];//添加该view
    
    [UIView animateWithDuration:2
     
                     animations:^{
                         cookies_small.frame = CGRectMake(xx, self.view.frame.size.height, sx, sx);//设定该雪花最后的消失坐标
                         
                     }
     
                     completion:^(BOOL finished) {
                         [cookies_small removeFromSuperview];
                     }];


}


//回転禁止
- (BOOL)shouldAutorotate{
    return NO;
}






@end






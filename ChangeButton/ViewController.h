//
//  ViewController.h
//  ChangeButton
//
//  Created by 王 on 2014/06/05.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *txtText;
@property (nonatomic,retain)IBOutlet UIButton *btnButton;
@property (nonatomic,retain)IBOutlet UIImage *peach2;

- (IBAction)pressBtn:(UIButton *)sender;



//extern int n;

@end

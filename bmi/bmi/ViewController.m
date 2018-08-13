//
//  ViewController.m
//  bmi
//
//  Created by Ryohei Miura on 2013/12/15.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    labelBmiText.hidden = YES;
    labelBmiTitle.hidden = YES;
    labelBmiValue.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// キーボードのReturnが押されたとき
-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    // フォーカスを外す
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)calcBmi
{
    float height = [tfHeight.text floatValue] / 100;
    
    float weight = [tfWidth.text floatValue];
    
    float bmiValue = weight / (height * height);
    
    labelBmiValue.text = [[NSString alloc] initWithFormat:@"%.2f", bmiValue];
    
    if (bmiValue < 17.6) {
        labelBmiText.text = @"やせ過ぎです";
    }else if (bmiValue < 19.8){
        labelBmiText.text = @"やせ気味です";
    }else if(bmiValue < 24.2) {
        labelBmiText.text =
            @"標準的な体重です";
    }else if(bmiValue < 26.4) {
        labelBmiText.text =
            @"太り気味です";
    }else {
        labelBmiText.text =
            @"肥満です";
    }
    labelBmiText.hidden = NO;
    labelBmiTitle.hidden = NO;
    labelBmiValue.hidden = NO;
}

@end

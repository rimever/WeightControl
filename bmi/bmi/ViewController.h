//
//  ViewController.h
//  bmi
//
//  Created by Ryohei Miura on 2013/12/15.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UITextField *tfHeight;
    IBOutlet UITextField *tfWidth;
    IBOutlet UIButton *btnCalc;
    IBOutlet UILabel *labelBmiTitle;
    IBOutlet UILabel *labelBmiValue;
    IBOutlet UILabel *labelBmiText;
}

@end

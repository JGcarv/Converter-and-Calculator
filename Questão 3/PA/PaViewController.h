//
//  PaViewController.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 15/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgAritimetica.h"

@interface PaViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtFirstTerm;

@property (weak, nonatomic) IBOutlet UITextField *txtConstant;

@property (weak, nonatomic) IBOutlet UITextField *txtNumberOfTerms;

@property (weak, nonatomic) IBOutlet UILabel *txtResult;


- (IBAction)btnCalculate:(UIButton *)sender;
- (IBAction)btnClearAll:(UIButton *)sender;

@end

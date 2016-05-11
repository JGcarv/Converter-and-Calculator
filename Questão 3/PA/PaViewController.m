//
//  PaViewController.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 15/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "PaViewController.h"

@interface PaViewController ()

@end

@implementation PaViewController

ProgAritimetica *pa = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
//    [_txtFirstTerm setDelegate:self];
//    [_txtConstant setDelegate:self];
//    [_txtNumberOfTerms setDelegate:self];
}

//-(BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    [textField resignFirstResponder];
//    return YES;
//}

- (IBAction)btnCalculate:(UIButton *)sender {
    
    pa = [[ProgAritimetica alloc] init];
    [pa setFirstTerm:[_txtFirstTerm.text doubleValue]];
    [pa setConstant:[_txtConstant.text doubleValue]];
    [pa setQuantity:[_txtNumberOfTerms.text doubleValue]];
    
    NSString *txtResult = [NSString stringWithFormat:@"%g", [pa sumOfNTerms:[pa getQuantity]]];
    _txtResult.text = txtResult;
    
}

- (IBAction)btnClearAll:(UIButton *)sender {
    
    _txtResult.text = @"0";
    [pa setConstant:0];
    [pa setFirstTerm:0];
    [pa setQuantity:0];
    _txtFirstTerm.text = @"";
    _txtConstant.text = @"";
    _txtNumberOfTerms.text = @"";
    
    
}
@end

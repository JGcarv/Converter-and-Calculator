//
//  CalculadoraViewController.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "CalculadoraViewController.h"

@implementation CalculadoraViewController

- (IBAction)botaoAllClear:(id)sender {
    
    primeiroNumero = 0;
    operador = 0;
    _display.text = @"0";
    botaoDecimal = false;
}


- (IBAction)botaoNumero:(UIButton *)sender {
    NSString *caracterePressionado = sender.titleLabel.text;
    NSMutableString *textoNoDisplay = [NSMutableString new];
    if ([sender.titleLabel.text  isEqual: @"."]) {
        if (botaoDecimal) {
            return;
        }
        else{
            if ([_display.text  isEqual: @"+"] || [_display.text  isEqual: @"-"] || [_display.text  isEqual: @"*"] || [_display.text  isEqual: @"/"]) {
                _display.text = @"0";
            }
            [textoNoDisplay appendFormat:@"%@.", _display.text];
            botaoDecimal = true;
        }
        
    }
    else {
        if ([_display.text  isEqual: @"0"] || [_display.text  isEqual: @"+"] || [_display.text  isEqual: @"-"] || [_display.text  isEqual: @"*"] || [_display.text  isEqual: @"/"])
            [textoNoDisplay appendFormat:@"%@", caracterePressionado];
        else
            [textoNoDisplay appendFormat:@"%@%@", _display.text, caracterePressionado];
    }
    _display.text = textoNoDisplay;
}


- (IBAction)botaoOperacao:(UIButton *)sender {
    
    if ([sender.titleLabel.text isEqual:@"+"])
        operador = 1;
    else if ([sender.titleLabel.text isEqual:@"-"])
        operador = 2;
    else if ([sender.titleLabel.text isEqual:@"*"])
        operador = 3;
    else
        operador = 4;
    
    primeiroNumero = [_display.text floatValue];
    NSLog(@"primeiro número: %f", primeiroNumero);
    //_display.text = @"0";
    _display.text = sender.titleLabel.text;
    botaoDecimal = false;
}

- (IBAction)botaoIgual:(UIButton *)sender {
    
    float segundoNumero = [_display.text floatValue];
    NSLog(@"segundo número: %f", segundoNumero);
    float total = 0;
    switch (operador) {
        case 1:
            total = primeiroNumero + segundoNumero;
            break;
        case 2:
            total = primeiroNumero - segundoNumero;
            break;
        case 3:
            total = primeiroNumero * segundoNumero;
            break;
        case 4:
            total = primeiroNumero / segundoNumero;
            break;
    }
    _display.text = [NSString stringWithFormat:@"%.02f", total];
    botaoDecimal = false;
}


@end

//
//  CalculadoraViewController.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculadoraViewController : UIViewController

{
NSInteger operador;
float primeiroNumero;
BOOL botaoDecimal;
}


@property (weak, nonatomic) IBOutlet UILabel *display;


- (IBAction)botaoAllClear:(id)sender;

- (IBAction)botaoNumero:(UIButton *)sender;

- (IBAction)botaoOperacao:(UIButton *)sender;

- (IBAction)botaoIgual:(UIButton *)sender;

@end

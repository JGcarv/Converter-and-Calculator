//
//  TemperaturaViewController.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Temperatura.h"

@interface TemperaturaViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *txtTempKelvin;

@property (weak, nonatomic) IBOutlet UITextField *txtTempCelsius;

@property (weak, nonatomic) IBOutlet UITextField *txtTempoFahrenheit;


- (IBAction)btnConvertKelvin:(UIButton *)sender;


- (IBAction)btnConvertCelsius:(UIButton *)sender;


- (IBAction)btnConverFahrenheit:(UIButton *)sender;


- (IBAction)btnAllClear:(UIButton *)sender;


@end

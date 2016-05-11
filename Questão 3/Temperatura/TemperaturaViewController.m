//
//  TemperaturaViewController.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "TemperaturaViewController.h"

@implementation TemperaturaViewController

- (IBAction)btnConvertKelvin:(UIButton *)sender {
    
    _txtTempCelsius.text = [NSString stringWithFormat:@"%g",[Temperatura convertKelvinToCelsius:[_txtTempKelvin.text doubleValue]]];
    _txtTempoFahrenheit.text = [NSString stringWithFormat:@"%g",[Temperatura convertKelvinToFahrenheit:[_txtTempKelvin.text doubleValue]]];
}

- (IBAction)btnConvertCelsius:(UIButton *)sender {
    
    _txtTempKelvin.text = [NSString stringWithFormat:@"%g",[Temperatura convertCelsiusToKelvin:[_txtTempCelsius.text doubleValue]]];
    _txtTempoFahrenheit.text = [NSString stringWithFormat:@"%g",[Temperatura convertCelsiusToFahrenheit:[_txtTempCelsius.text doubleValue]]];

}

- (IBAction)btnConverFahrenheit:(UIButton *)sender {
    
    _txtTempKelvin.text = [NSString stringWithFormat:@"%g",[Temperatura convertFahrenheitToKelvin:[_txtTempoFahrenheit.text doubleValue]]];
    _txtTempCelsius.text = [NSString stringWithFormat:@"%g", [Temperatura convertFahrenheitCelsius:[_txtTempoFahrenheit.text doubleValue]]];
}

- (IBAction)btnAllClear:(UIButton *)sender {
    
    _txtTempoFahrenheit.text = @"";
    _txtTempKelvin.text = @"";
    _txtTempCelsius.text = @"";
    
}
@end

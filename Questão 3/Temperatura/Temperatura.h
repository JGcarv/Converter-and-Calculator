//
//  Temperatura.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Temperatura : NSObject


+(double) convertKelvinToCelsius: (double) tempKelvin;
+(double) convertKelvinToFahrenheit:(double)tempKelvin;
+(double) convertCelsiusToKelvin: (double) tempCelsius;
+(double) convertCelsiusToFahrenheit:(double)tempCelsius;
+(double) convertFahrenheitToKelvin: (double) tempFahrenheit;
+(double) convertFahrenheitCelsius:(double)tempFahrenheit;

@end

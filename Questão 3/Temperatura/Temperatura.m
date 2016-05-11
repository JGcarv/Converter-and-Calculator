#import "Temperatura.h"

@implementation Temperatura

+(double) convertKelvinToCelsius: (double) tempKelvin{
    
    return tempKelvin - 273;
}

+(double) convertKelvinToFahrenheit:(double)tempKelvin{
    
    return (tempKelvin * 9/5) - 459.67;
}

+(double) convertCelsiusToKelvin: (double) tempCelsius{
    
    return tempCelsius + 273;
}

+(double) convertCelsiusToFahrenheit:(double)tempCelsius{
    
    return (tempCelsius * 9 / 5) + 32;
}

+(double) convertFahrenheitToKelvin: (double) tempFahrenheit{
    
    return (tempFahrenheit + 459.67) * 5 / 9;
}
+(double) convertFahrenheitCelsius:(double)tempFahrenheit{
    
    return (tempFahrenheit - 32) / 1.8;
}

@end

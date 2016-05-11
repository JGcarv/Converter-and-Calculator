//
//  Funcionario.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "Funcionario.h"

@implementation Funcionario


-(void) setName: (NSString *) varName{
    
    name = varName;
}
-(NSString *) getName{
    
    return name;
}
-(void) setGender: (int) varGender{
    
    gender = varGender;
}

-(int) getGender{
    
    return gender;
}
-(void) setSalary:(double) varSalary{
    
    salary = varSalary;
}
-(double) getSalary{
    
    return salary;
}

-(double) calculateRaise{
    
    return salary += salary * 0.07;
}

@end

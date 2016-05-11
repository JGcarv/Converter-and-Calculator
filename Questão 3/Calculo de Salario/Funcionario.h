//
//  Funcionario.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Funcionario : NSObject
{
    NSString *name;
    int gender;
    double salary;
    
}

-(void) setName: (NSString *) varName;
-(NSString *) getName;
-(void) setGender: (int) varGender;
-(int) getGender;
-(void) setSalary:(double) varSalary;
-(double) getSalary;

-(double) calculateRaise;

@end

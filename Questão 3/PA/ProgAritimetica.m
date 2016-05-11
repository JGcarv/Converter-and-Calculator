//
//  ProgAritimetica.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 15/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "ProgAritimetica.h"

@implementation ProgAritimetica


-(void) setConstant: (double) cnstnt{
    
    constant = cnstnt;
}
-(double) getConstant{
    
    return constant;
}

-(void) setFirstTerm:(double) frstTrm{
    
    firstTerm = frstTrm;
}
-(double) getFirstTerm{
    
    return firstTerm;
}

-(void) setQuantity: (double) qntty{
    
    quantityOfTerms = qntty;
}
-(double) getQuantity{
    
    return quantityOfTerms;
}

-(double) findNthTerm: (int) numberOfTerms{
    
    return firstTerm + (numberOfTerms - 1) * constant;
}

-(double) sumOfNTerms: (int) terms{
    
    double lastTerm = [self findNthTerm:terms];
    return (firstTerm + lastTerm) * terms / 2;
}



@end

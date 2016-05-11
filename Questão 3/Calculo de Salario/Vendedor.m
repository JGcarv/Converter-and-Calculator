//
//  Vendedor.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "Vendedor.h"

@implementation Vendedor

-(double) calculateRaise{
    
    return (salary += salary * 0.15) + totalSalesWorth * 0.1;
}

-(void) setTotalSalesWorh: (double) totalSales{
    
    totalSalesWorth = totalSales;
}
-(double) getTotalSalesWorth{
    
    return totalSalesWorth;
}

@end

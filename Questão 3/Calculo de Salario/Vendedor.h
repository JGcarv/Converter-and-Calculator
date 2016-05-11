//
//  Vendedor.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "Funcionario.h"

@interface Vendedor : Funcionario
{
    double totalSalesWorth;
}

-(void) setTotalSalesWorh: (double) totalSales;
-(double) getTotalSalesWorth;
@end

//
//  CalcularSalarioViewController.m
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import "CalcularSalarioViewController.h"
#import "Funcionario.h"
#import "Gerente.h"
#import "Vendedor.h"

@implementation CalcularSalarioViewController

Funcionario *funcionario = nil;
Gerente *gerente = nil;
Vendedor *vendedor = nil;

-(void) displayInfo {
    
    if (!vendedorSelected) {
        
        _labelTotalSalesWorth.alpha = 0;
        _txtTotalSalesWorth.userInteractionEnabled = NO;
        _txtTotalSalesWorth.alpha = 0;
    }
    else {
        
        _labelTotalSalesWorth.alpha = 1;
        _txtTotalSalesWorth.userInteractionEnabled = YES;
        _txtTotalSalesWorth.alpha = 1;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    funcionarioSelected = true;
    gerenteSelected = false;
    vendedorSelected = false;
    
    [self displayInfo];
    
}


- (IBAction)segmentedControlFuncionario:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0){
        
        funcionarioSelected = true;
        gerenteSelected = false;
        vendedorSelected = false;
        [self displayInfo];
    }
        
    else if (sender.selectedSegmentIndex == 1) {
        
        funcionarioSelected = false;
        gerenteSelected = true;
        vendedorSelected = false;
        [self displayInfo];

    }

    else {
        
        funcionarioSelected = false;
        gerenteSelected = false;
        vendedorSelected = true;
        [self displayInfo];

    }

}

- (IBAction)btnCalculateRaise:(UIButton *)sender {
    
    if (funcionarioSelected){
        
        funcionario = [[Funcionario alloc] init];
        [funcionario setSalary:[_txtSalaryBase.text doubleValue]];
        _labelOldSalary.text = _txtSalaryBase.text;
        
        NSString *labelNewSalary = [NSString stringWithFormat:@"R$%g", [funcionario calculateRaise]];
        _labelNewSalary.text = labelNewSalary;
        
    }
    else if (gerenteSelected){
        
        gerente = [[Gerente alloc]init];
        [gerente setSalary:[_txtSalaryBase.text doubleValue]];
        _labelOldSalary.text = _txtSalaryBase.text;
        
        NSString *labelNewSalary = [NSString stringWithFormat:@"R$%g", [gerente calculateRaise]];
        _labelNewSalary.text = labelNewSalary;
        
    }
    else{
        
        vendedor = [[Vendedor alloc]init];
        [vendedor setSalary:[_txtSalaryBase.text doubleValue]];
        [vendedor setTotalSalesWorh:[_txtTotalSalesWorth.text doubleValue]];
        _labelOldSalary.text = _txtSalaryBase.text;
        
        NSString *labelNewSalary = [NSString stringWithFormat:@"R$%g", [vendedor calculateRaise]];
        _labelNewSalary.text = labelNewSalary;
    }
}

- (IBAction)btnAllClear:(UIButton *)sender {
    
    [funcionario setSalary:0];
    [gerente setSalary:0];
    [vendedor setSalary:0];
    [vendedor setTotalSalesWorh:0];
    
    _txtSalaryBase.text = @"";
    _txtTotalSalesWorth.text = @"";
    _labelOldSalary.text = @"0";
    _labelNewSalary.text = @"0";
}
@end

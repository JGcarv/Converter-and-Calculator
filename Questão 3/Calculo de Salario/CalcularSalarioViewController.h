//
//  CalcularSalarioViewController.h
//  Questão 3
//
//  Created by Joao Gabriel Carvalho on 16/12/15.
//  Copyright © 2015 Joao Gabriel Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcularSalarioViewController : UIViewController {
    
    BOOL funcionarioSelected;
    BOOL gerenteSelected;
    BOOL vendedorSelected;
}

- (IBAction)segmentedControlFuncionario:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelOldSalary;


@property (weak, nonatomic) IBOutlet UILabel *labelNewSalary;

@property (weak, nonatomic) IBOutlet UITextField *txtSalaryBase;

@property (weak, nonatomic) IBOutlet UITextField *txtTotalSalesWorth;

@property (weak, nonatomic) IBOutlet UILabel *labelTotalSalesWorth;

- (IBAction)btnCalculateRaise:(UIButton *)sender;

- (IBAction)btnAllClear:(UIButton *)sender;

@end

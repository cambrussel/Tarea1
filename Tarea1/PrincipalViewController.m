//
//  PrincipalViewController.m
//  Tarea1
//
//  Created by Adriana  Cambronero on 6/28/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import "PrincipalViewController.h"
#import "TrabajoViewController.h"
#import "HistorialViewController.h"
@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)botonIngresar:(id)sender {
    TrabajoViewController* createTrabajo =[self.storyboard instantiateViewControllerWithIdentifier:@"trabajoView"];
    [self.navigationController pushViewController:createTrabajo animated:YES];
    
}

- (IBAction)botonHistorial:(id)sender {
    HistorialViewController* createHistorial =[self.storyboard instantiateViewControllerWithIdentifier:@"historialView"];
    [self.navigationController pushViewController:createHistorial animated:YES];
    
}
@end

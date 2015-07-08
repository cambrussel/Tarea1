//
//  TrabajoViewController.m
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/3/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import "TrabajoViewController.h"
#import "Trabajo.h"

@interface TrabajoViewController ()

@end

@implementation TrabajoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initialize];
}

-(void) initialize{
    
    UIBarButtonItem *addButton =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(createTrabajo)];
    self.navigationItem.rightBarButtonItem = addButton;}
    

-(void) createTrabajo{
    

        Trabajo* miTrabajo = [Trabajo new];
        miTrabajo.marca = self.marcaTextField.text;
        miTrabajo.annio = [self.annioTextField.text intValue];
        miTrabajo.nombre = self.nombreTextField.text;
        miTrabajo.descripcion = self.descripcionTextField.text;
        miTrabajo.montoTotal = [self.montoTextField.text intValue];
        miTrabajo.fecha = [NSDate date];
    
        RLMRealm *real = [RLMRealm defaultRealm];
        NSLog(@"PATH BD:%@",real.path);
        [real beginWriteTransaction];
        [real addObject:miTrabajo];
        [real commitWriteTransaction];
        //[self.trabajoArray addObject:miTrabajo];
    
        
        [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hideKeyboard:(id)sender {
    [self.view endEditing:YES];
}


// MÉTODO PARA OCULTAR TECLADO CUANDO SE DA RETURN
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end

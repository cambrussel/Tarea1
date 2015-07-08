//
//  HistorialViewController.m
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/3/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import "HistorialViewController.h"
#import "Trabajo.h"
#import "ConsultaTableViewController.h"




@interface HistorialViewController ()

@end

@implementation HistorialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadTrabajo];
    //self.trabajoArray = [NSMutableArray new];
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


-(void)loadTrabajo{
    self.trabajoArray = [NSMutableArray new];
    self.trabajo = [Trabajo allObjects];
    self.trabajo = [self.trabajo sortedResultsUsingProperty:@"fecha" ascending:YES];
    for (RLMObject *object in self.trabajo) {
        [self.trabajoArray addObject:object];
        //self.trabajoArray = [self.trabajo RLMResultsToArray];
        
    }
    
    NSLog(@"Mi array:%@", self.trabajoArray);
   // NSLog(@"%@", self.trabajo);
}

- (IBAction)diaBoton:(id)sender {
    
    
}

- (IBAction)mesBoton:(id)sender {
}

- (IBAction)todosBoton:(id)sender {
    ConsultaTableViewController* createConsulta =[self.storyboard instantiateViewControllerWithIdentifier:@"consultaTableView"];
   // NSLog(@"%@", self.trabajoArray);
    createConsulta.trabajoArray= self.trabajoArray;
     NSLog(@"Mi array:%@", self.trabajoArray);
    [self.navigationController pushViewController:createConsulta animated:YES];
    
}
@end

//
//  ConsultaTableViewController.m
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/5/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import "ConsultaTableViewController.h"
#import "ConsultaTableViewCell.h"
#import "Trabajo.h"

static int NUMBER_SECTION =1;

static NSString* CELL_IDENTIFIER =@"ConsultaTableViewCell";



@interface ConsultaTableViewController ()

@end

@implementation ConsultaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
    
   
}

-(void)initialize{
    
    UINib *nib = [UINib nibWithNibName:CELL_IDENTIFIER bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:CELL_IDENTIFIER];
    self.title = [NSString stringWithFormat: @"$%d", [self calcularMontoTotal]];
}

-(int)calcularMontoTotal{
    
    for (int i = 0; i<self.trabajoArray.count ;i++) {
        Trabajo* object = [self.trabajoArray objectAtIndex:i];
        self.montoTotal = self.montoTotal +object.montoTotal;
    }
    return self.montoTotal;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ConsultaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    
    
    Trabajo* object = [self.trabajoArray objectAtIndex:indexPath.row];
    cell.nombreCustom.text = object.nombre;
    
   
    cell.montoCustom.text=  [NSString stringWithFormat:@"%d", object.montoTotal];;
    cell.marcaCustom.text = object.marca;
    cell.modeloCustom.text = object.descripcion;
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return NUMBER_SECTION;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return [self.trabajoArray count];
}

@end

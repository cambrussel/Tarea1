//
//  TrabajoViewController.h
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/3/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrabajoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *marcaTextField;
@property (weak, nonatomic) IBOutlet UITextField *annioTextField;
@property (weak, nonatomic) IBOutlet UITextField *nombreTextField;
@property (weak, nonatomic) IBOutlet UITextView *descripcionTextField;

@property (weak, nonatomic) IBOutlet UITextField *montoTextField;

//@property(nonatomic,strong) NSMutableArray *trabajoArray;

@end

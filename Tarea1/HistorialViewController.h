//
//  HistorialViewController.h
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/3/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Realm/Realm.h>

@interface HistorialViewController : UIViewController
- (IBAction)diaBoton:(id)sender;

- (IBAction)mesBoton:(id)sender;
- (IBAction)todosBoton:(id)sender;

@property(nonatomic,strong) RLMResults* trabajo;
@property(nonatomic,strong) NSMutableArray *trabajoArray;

@end

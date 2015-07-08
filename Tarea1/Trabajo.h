//
//  Trabajo.h
//  Tarea1
//
//  Created by Adriana  Cambronero on 7/3/15.
//  Copyright (c) 2015 Adriana Cambronero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Trabajo : RLMObject

@property NSString* marca;
@property int annio;
@property NSString* nombre;
@property NSString* descripcion;
@property int montoTotal;
@property NSDate* fecha;

@end

RLM_ARRAY_TYPE(Trabajo);
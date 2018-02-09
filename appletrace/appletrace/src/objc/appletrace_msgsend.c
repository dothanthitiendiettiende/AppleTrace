//
//  appletrace_msgsend.m
//  appletrace
//
//  Created by everettjf on 28/09/2017.
//  Copyright © 2017 everettjf. All rights reserved.
//

#include "appletrace_msgsend.h"
#include <strings.h>

static int apt_s_enabled = 1;
void APTEnable(int enable){
    apt_s_enabled = enable;
}
int APTIsEnable(){
    return apt_s_enabled;
}

int APTIsIgnoredClass(const char* name){
    if(!name)
        return 1;
    
    if(strlen(name) <=2)
        return 1;

    // add other filters
    
    return 0;
}


//
//  appletrace_msgsend.h
//  appletrace
//
//  Created by everettjf on 28/09/2017.
//  Copyright © 2017 everettjf. All rights reserved.
//

#if defined(__cplusplus)
extern "C" {
#else
#endif

void APTEnable(int enable);
int APTIsEnable();
int APTIsIgnoredClass(const char* name);
    
#if defined(__cplusplus)
}
#else
#endif

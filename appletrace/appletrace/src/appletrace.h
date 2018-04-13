//
//  appletrace.h
//  appletrace
//
//  Created by everettjf on 2017/9/12.
//  Copyright © 2017年 everettjf. All rights reserved.
//


#if defined(__cplusplus)
extern "C" {
#else
#endif
    
#define APTLogEnableDefaultValue 0
    
void APTBegin(const char *threadname,const char* name);
void APTEnd(const char *threadname,const char* name);
    
void APTBegin2(const char *processname,const char *threadname,const char* name);
void APTEnd2(const char *processname,const char *threadname,const char* name);

void APTBeginSection(const char* name);
void APTEndSection(const char* name);

void APTSyncWait();
void APTLogEnable(int enable);

#if defined(__cplusplus)
}
#else
#endif

// Objective C class method
//#define APTMethodBegin APTBeginSection([NSString stringWithFormat:@"[%@]%@",self,NSStringFromSelector(_cmd)].UTF8String)
//#define APTMethodEnd APTEndSection([NSString stringWithFormat:@"[%@]%@",self,NSStringFromSelector(_cmd)].UTF8String)


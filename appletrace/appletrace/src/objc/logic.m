#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
#import <mach-o/dyld.h>
#import <dlfcn.h>
#import "appletrace.h"
#import "appletrace_msgsend.h"
#include "apt_hooker.h"


@interface AppleTraceMsgHooker : NSObject
@end
@implementation AppleTraceMsgHooker
+ (void)load {
    
    apt_start_hook();
}
//void objc_msgSend_pre_call(){
//    if(!APTIsEnable())
//        return;
//    char *sel_name = (char *)rs->general.regs.x1;
//
//    // The first filter algo
//    if(!(LOG_ALL_SEL || (sel_name > log_sel_start_addr && sel_name < log_sel_end_addr))) {
//        return;
//    }
//
//    // bad code! correct-ref: https://github.com/DavidGoldman/InspectiveC/blob/299cef1c40e8a165c697f97bcd317c5cfa55c4ba/logging.mm#L27
//    void *object_addr = (void *)rs->general.regs.x0;
//    void *class_addr = zz_macho_object_get_class((id)object_addr);
//    if(!class_addr)
//        return;
//
//    void *super_class_addr = class_getSuperclass(class_addr);
//
//    // The second filter algo
//    if(!(LOG_ALL_CLASS
//       || (
//           0
////              || (object_addr > log_class_start_addr && object_addr < log_class_end_addr)
//          || (class_addr >= log_class_start_addr && class_addr <= log_class_end_addr)
////              || (super_class_addr > log_class_start_addr && super_class_addr < log_class_end_addr)
//          )
//       )) {
//        return;
//    }
//
//    memset(decollators, 45, 128);
//    if(threadstack->size * 3 >= 128)
//        return;
//    decollators[threadstack->size * 3] = '\0';
//    const char *class_name = object_getClassName(object_addr);
//
//    if(APTIsIgnoredClass(class_name)){
//        STACK_SET(callstack, "is_ignored", class_name, char*);
//        return;
//    }
//
//    unsigned long repl_len = strlen(class_name) + strlen(sel_name) + 10;
//    char *repl_name = malloc(repl_len);
//    snprintf(repl_name, repl_len, "[%s]%s",class_name,sel_name);
//    STACK_SET(callstack, "repl_name", repl_name, char*);
//
////    NSLog(@"pre %s",repl_name);
//    APTBeginSection(repl_name);
//}
//
//void objc_msgSend_post_call(RegState *rs, ThreadStack *threadstack, CallStack *callstack, const HookEntryInfo *info) {
//    if(!APTIsEnable())
//        return;
//
//    if(STACK_CHECK_KEY(callstack, "is_ignored"))
//        return;
//
//    if(STACK_CHECK_KEY(callstack, "repl_name")){
//        char *repl_name = STACK_GET(callstack, "repl_name", char*);
////        NSLog(@"post %s",repl_name);
//        APTEndSection(repl_name);
//
//        free(repl_name);
//    }
//}

@end





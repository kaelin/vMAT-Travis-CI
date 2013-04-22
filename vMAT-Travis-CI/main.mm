//
//  main.mm
//  vMAT-Travis-CI
//
//  Created by Kaelin Colclasure on 4/21/13.
//  Copyright (c) 2013 Kaelin Colclasure. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <vMAT.h>


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        vMAT_Array * matA = vMAT_eye(vMAT_MakeSize(13), nil);
        NSLog(@"%@", matA.dump);
        
        int width = 70;
        char bar[width - 1];
        memset(bar, ' ', width - 2);
        bar[width - 2] = '\0';
        
        for (float pct = 0;
             pct <= 1.01;
             pct += 0.1) {
            memset(bar, '#', pct * (width - 2));
            printf("  [%s] %3.0f%%\r", bar, pct * 100);
            fflush(stdout);
            [NSThread sleepForTimeInterval:0.1];
        }
        printf("\n");
    }
    return 0;
}

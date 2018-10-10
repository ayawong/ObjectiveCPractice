//
//  main.c
//  yostring
//
//  Created by ayawong on 2018/9/1.
//  Copyright © 2018年 Luclin. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
 
//    ASCII
//    char x= 0x21;
//    while (x <= 0x7e) {
//        printf("%x is %c\n",x ,x);
//        x++;
//    }
    
    // 常量ASCII
    char x = '!';
    while (x <= '~') {
        printf("%x is %c\n",x ,x);
        x++;
    }
    
//    char *start = malloc(5);
////    *start = 'L';
////    *(start + 1) ='o';
////    *(start + 2) ='v';
////    *(start + 3) ='e';
////    *(start + 4) ='\0';
//    start[0]='L';
//    start[1]='o';
//    start[2]='v';
//    start[3]='e';
//    start[4]='\0';
    char *start = "LOVE";

    
    printf("%s have %zu characters\n", start, strlen((start)));
    printf("The third letter is %c\n", *(start+2));
//    free(start);
//    start = NULL;
    
    return 0;
}

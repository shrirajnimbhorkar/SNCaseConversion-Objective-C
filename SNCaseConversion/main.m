//
//  main.m
//  SNCaseConv
//
//  Created by Student P_06 on 23/10/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <Foundation/Foundation.h>
void CaseConvUpper(char string[30]);
void CaseConvLower();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int choice,continu=1;
        NSLog(@"Case Conversion");
        char string[100];
        while(continu)
        {
            printf("Input a string to convert to upper case\n");
            scanf("%s",string);
            printf("Which case conversion you want:1 for Uppercase/2 for Lowercase?");
            scanf("%d",&choice);
            if(choice==1)
            {
            CaseConvUpper(string);
            }
            else if(choice==2)
            {
            CaseConvLower(string);
            }
            printf("\nPress 1 to continu 0 to exit");
            scanf("%d",&continu);
        }
    }
    return 0;
}
void CaseConvUpper(char string[30])
{

    NSString *myString=[NSString  stringWithUTF8String:string];
    NSString    *String = [myString uppercaseString];
    NSLog(@"%@",String);
    
}
void CaseConvLower(char string[30])
{

    
    NSString *myString=[NSString  stringWithUTF8String:string];
    NSString    *String =[myString   lowercaseString];
    NSLog(@"%@",String);
}
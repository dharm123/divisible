//GROUP ID 69
//DHARMVEER DHAR DVIVEDI [15114025]
//SATYENDRA KUMAR BANJARE [15114064]
//C CODE :- Divisibility ckeck of a number by 31

#include<stdio.h>
int main(void)
{
         int a;
         scanf("%d",&a);
         while(a>0){
            int b=a%10;
            a/=10;
            b*=3;
            a-=b;
         }
         if(a==0)printf("Number is Divisible by 31");

         else printf("Number is not Divisible by 31");

}

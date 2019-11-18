 #include <stdio.h>
#include "myMath.h"
int main(){
double x=1;
do printf("Enter a number");
while (scanf("%le",&x)!=1);
double rep=0;
int x2 =(int)x;
rep=sub(add(Exp(x2),Pow (x,3)),2);
printf("The value of f(x)=e^x +x^3 -2 at the point %0.4f is: %0.4f\n" ,x ,rep);
rep =add(mul(x,3),mul(Pow(x,2),2));
printf("The value of f(x)=3x+2x^2 at the point %0.4f is: %0.4f\n" ,x ,rep);
rep= sub(div(mul(Pow(x,3),4),5),mul(x,2));
printf("The value of f(x)=(4x^3)/5-2x at the point %0.4f is: %0.4f\n" ,x ,rep);
return 0;


}
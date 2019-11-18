double Exp (int x){
    double e= 2.71828;
    double ans= e;
    for (int i=1; i<x ; i++){
        ans*=e;
    }
    return ans;
}

double Pow (double x, int y){
    double ans=x;
    for (int i=1; i<y; i++)
{
    ans*=x;
}
return ans;
}

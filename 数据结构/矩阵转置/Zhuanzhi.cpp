#include<stdio.h>
int main()
{
    int N1,N2;
    int a[N1][N2],b[N2][N1],i,j;
    scanf("%d%d",&N1,&N2);
    for(i=0;i<N1;i++)
        for(j=0;j<N2;j++)
           scanf("%d",&a[i][j]);
    printf("\n");
    for(i=0;i<N2;i++)
      {
        for(j=0;j<N1;j++)
        {
            b[i][j] = a[j][i];
            printf("%d\t",b[i][j]);            
        }
        printf("\n");
      }
    return 0;
}
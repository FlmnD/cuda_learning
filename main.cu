#include <stdio.h>

__global__ void cuda_hello()
{
    printf("Hello World from GPU thread %d!\n", threadIdx.x);
}

int main()
{
    cuda_hello<<<1, 5>>>();
    cudaDeviceSynchronize();
    return 0;
}

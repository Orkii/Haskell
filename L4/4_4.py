
import eulerlib, itertools
import math

def compute():
    LENGTH = 20
    BASE = 10
    MODULUS = 10**9
    
    MAX_SQR_DIGIT_SUM = (BASE - 1)**2 * LENGTH

    sqsum = []
    count = []
    
    for i in range(LENGTH + 1):
        sqsum.append([0] * (MAX_SQR_DIGIT_SUM + 1))
        count.append([0] * (MAX_SQR_DIGIT_SUM + 1))
        if i == 0:
            count[0][0] = 1
        else:
            for j in range(BASE):
                for k in itertools.count():
                    index = k + j**2
                    if index > MAX_SQR_DIGIT_SUM:
                        break
                    sqsum[i][index] = (sqsum[i][index] + sqsum[i - 1][k] + pow(BASE, i - 1, MODULUS) * j * count[i - 1][k]) % MODULUS
                    count[i][index] = (count[i][index] + count[i - 1][k]) % MODULUS
    
    
    ans = sum(sqsum[LENGTH][i**2] for i in  range(1, int(math.sqrt(MAX_SQR_DIGIT_SUM))))
    
    
    #for row in sqsum :
    #    for item in row:
    #        print(item, end='\n')
    #    print("\n")
        
    
    
    
    
    
    return f"{ans%MODULUS:09}"


if __name__ == "__main__":

    print(compute())
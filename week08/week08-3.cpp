//week08-3.cpp
//LeetCode 2843
class Solution {
public:
    int countSymmetricIntegers(int low, int high) {
        int ans = 0;
        for(int i=low; i<=high; i++){
            int a= i/1000;
            int b= i/100 % 10;
            int c= i/10 % 10;
            int d= i % 10;
            if(11<=i && i<=99 && c==d) ans++;
            if(1000<=i && i<=9999 && a+b==c+d) ans++;
        }
        return ans;
    }
};

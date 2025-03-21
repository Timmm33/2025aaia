///week05-3.cpp
class Solution {
public:
    bool divideArray(vector<int>& nums) {
        int a[501] = {}; ///大括號裡，沒寫完的，會放0
        for(int i=0; i<nums.size(); i++) {
            int now = nums[i];
            a[now]++; /// 照著花色now數字，放好+1
        }
        for(int i=1; i<=500; i++){ ///逐一檢查花色
            if( a[i]%2==1) return false; ///奇數 失敗
        }
        return true;
    }
};

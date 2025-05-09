/// week12-6.cpp
class Solution {
public:
    vector<int> buildArray(vector<int>& nums) {
        int N = nums.size(); /// 陣列的大小
        vector<int> ans(N); /// ans的大小，是N 小心是原括號
        for(int i=0; i<N; i++){
            ans[i] = nums[nums[i]];
        }
        return ans;
    }
};

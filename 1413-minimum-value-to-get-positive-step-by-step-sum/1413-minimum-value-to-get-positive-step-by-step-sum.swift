class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var startValue = 1
        var sum = 0
        
        for num in nums {
            sum += num
            if sum + startValue < 1 {
                 startValue = abs(sum) + 1
            }   
        }
        
        return startValue
    }
}
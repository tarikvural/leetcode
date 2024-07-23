function canJump(nums: number[]): boolean {
    let left = nums[0]
    for(let i = 1; i < nums.length; i++) {
        if(left == 0) {
            return false
        }
        left = Math.max(left - 1, nums[i])
    }
    return true
};
function removeElement(nums: number[], val: number): number {
    for(let i: number = 0; i < nums.length; i++) {
        if(nums[i] === val){
            nums.splice(i--,1);
            continue;
        }
    }
    return nums.length;
};
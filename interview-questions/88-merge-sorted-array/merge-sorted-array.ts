/**
 Do not return anything, modify nums1 in-place instead.
 */
function merge(nums1: number[], m: number, nums2: number[], n: number): void {
    nums1.length = m;
    nums2.forEach((value) => { nums1.push(value)})
    nums1.sort((a,b) => { return a-b})
};
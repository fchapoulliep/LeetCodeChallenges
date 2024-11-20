class Solution {
    public int removeElement(int[] nums, int val) {
        int[] new_nums = nums;
        int i = 0;
        for (int k=0; k < new_nums.length; k++) {
            if (new_nums[k] != val) {
                nums[i] = new_nums[k];
                i++;
            }
        }
        return i;
    }
}

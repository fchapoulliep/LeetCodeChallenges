import java.util.HashMap;

class Solution {
    public int majorityElement(int[] nums) {
        HashMap<Integer, Integer> numberOccurrences = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            numberOccurrences.put(nums[i], numberOccurrences.getOrDefault(nums[i], 0) + 1);
        }

        int majorityCount = nums.length / 2;

        for (Integer key : numberOccurrences.keySet()) {
            if (numberOccurrences.get(key) > majorityCount) {
                return key;  // Return the majority element
            }
        }

        return -1;
    }
}


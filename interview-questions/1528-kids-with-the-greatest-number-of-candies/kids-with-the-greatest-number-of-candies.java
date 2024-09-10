class Solution {
    public List<Boolean> kidsWithCandies(int[] candies, int extraCandies) {
        int maxCandies = 0;
        List<Boolean> result = new LinkedList<>();
        for(int i = 0; i < candies.length; i++) {
            if(candies[i] > maxCandies) maxCandies = candies[i];
        }
        for(int i = 0; i < candies.length; i++) {
            if(candies[i]+ extraCandies >= maxCandies) {
                result.add(true);
            } else {
                result.add(false);
            }
        }

        return result;
    }
}
class Solution {
    public String mergeAlternately(String word1, String word2) {
        int longer;
        StringBuilder strb = new StringBuilder();
        if(word1.length() > word2.length()) longer=word1.length();
        else longer = word2.length();
        for(int i = 0; i < longer ; i++) {
            if(! (i>=word1.length()) ) {
                strb.append(word1.charAt(i));
            }
            if(!(i>=word2.length())) {
                strb.append(word2.charAt(i));
            }
        }
        return strb.toString();
    }
}
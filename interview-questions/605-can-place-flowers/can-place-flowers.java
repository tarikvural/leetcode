class Solution {
    public boolean canPlaceFlowers(int[] flowerbed, int n) {
        if(viablePlots(flowerbed) >= n){ 
            return true;
        }
        return false;
    }

    public int viablePlots(int[] flowerbed) {
        int viables = 0;
        for(int i = 0; i < flowerbed.length; i++) {
            if(flowerbed[i] == 1 ) continue;
            if(i>0 && flowerbed[i-1] == 1 ) continue;
            if(i == flowerbed.length-1) {
                viables++;
                break;
            }
            if(flowerbed[i+1]==0) {
                viables++;
                flowerbed[i] = 1;
            }
        }
        return viables;
    }
}


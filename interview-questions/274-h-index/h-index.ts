function hIndex(citations: number[]): number {
    let k = 1;
    let lastK = 0;
    while(k> lastK){
        lastK = k;
        if(citations.filter((cit) => cit >= k).length >= k){
            k++;
        }
    }
    return lastK-1;
};
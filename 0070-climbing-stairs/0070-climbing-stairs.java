class Solution {
    public int climbStairs(int n) {
        return totalWays(0, n, new HashMap<Integer, Integer>());
    }
    
    private int totalWays(int currentStair, int targetStair, Map<Integer, Integer> memo) {
        if (currentStair == targetStair)
            return 1;
        
        if (currentStair > targetStair)
            return 0;
        
        int currentKey = currentStair;
        
        if (memo.containsKey(currentKey))
            return memo.get(currentKey);
        
        int oneStep = totalWays(currentStair+1, targetStair, memo);
        int twoSteps = totalWays(currentStair+2, targetStair, memo);
        
        memo.put(currentKey, oneStep + twoSteps);
        return oneStep + twoSteps;
    }
}
class Solution {
    public boolean isPalindrome(int x) {
        if (x < 0) return false;
        
        int reversed = 0;
        int remainder = 0;
        int original = x;
        
        while(x != 0) {
            remainder = x % 10; // reversed integer is stored in variable
            reversed = reversed * 10 + remainder; //multiply reversed by 10 then add the remainder so it gets stored at next decimal place.
            
            x /= 10;
            
            
        }
        return original == reversed;
            
    }
}
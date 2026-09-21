int main() {
    for (int i = 1; i <= 20; i++) {
        /*You are given a code that prints
        the numbers from 1 to 20 (including).
        */
        if (i % 2 == 0) {
            continue;
        } 

        
/*
Your task is to add if and continue statements so that only
the even numbers will be printed (2, 4, 6, ...).
*/
        std::cout << i << std::endl;
    }
    return 0;
}

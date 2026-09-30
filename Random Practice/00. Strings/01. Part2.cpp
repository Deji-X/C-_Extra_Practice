/*
char str1[6] = "Hello"; - This is CORRECT "Hello" needs 6 spaces (5 letters + '\0')
char str2[5] = "Hello"; - This is WRONG Array too small.
char str3[10] = "Hello"; - CORRECT, Extra space is fine.

ACCESSING INDIVIDUAL CHARACTERS USING ARRAY NOTATION:
char str[] = "Hello";
char first = str[0]; = 'H'
char third = str[2]; = 'l'

MODIFYING CHARACTERS WITHIN ARRAY BOUNDS:
char str[] = "Hello";
str[0] = 'J';
cout << str << endl; Outputs = "Jello";
Note: You cannot directly assign a new string to a C-style string after declaration.
Use functions like strcpy for string copying.
*/

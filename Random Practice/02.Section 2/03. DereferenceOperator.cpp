/* Deference Operator
The deferemce operator '*' allows you to access or modify the value stored at a pointer's
memory address.

Accessing a value:
int number = 42;
int* ptr = &number; // ptr hp;ds the address of the number.
int value = *ptr; // value is now 42.

MODIFYING A VALUE:
*ptr = 100 // The value at the address ptr points too becomes 100
// number is now 100
& - To get an address.
* - To access or change the value at that address.
*/
/*
Create a program that demonstrates the dereference operator by modifying
a variable's value through a pointer.

The following input will be provided:

An integer representing the initial value for a variable
An integer representing the new value to assign through the pointer
Your program should:

Declare an integer variable named temperature and
initialize it with the first input value
Create a pointer named tempPtr that points to the temperature variable
Print the original value by dereferencing the pointer
Use the dereference operator to change the value of temperature
to the second input value through the pointer
Print the new value by dereferencing the pointer again
Use the following exact output format:

Original value: [original value]
New value: [new value]*/
#include <iostream>
#include <string>

using namespace std;

int main(){
  return 0;
}

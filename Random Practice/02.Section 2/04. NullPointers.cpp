/* NULL POINTERS
Initialize pointers to 'nullptr' to avoid undefined behavior:

int* ptr = nullptr; // ptr is now a null pointer.

Always check if a pointer is not null before dereferencing:
if (ptr != nullptr){
  // Safe to use *ptr here
  int value = *ptr;
}
The 'nullptr' keyword explicitly indicates that the pointer is not pointing to any valid
memory loaction, making your code safer and preventing crashes from accessing invalid
memory.
*/

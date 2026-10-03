//Quiz 1.
int values[5] = {10, 20, 30, 40, 50};

int* ptr = values;

//QUIZ 2
int values[6] = {15, 23, 8, 42, 17, 31};

int* ptr = values;

ptr = ptr +3;
cout << *ptr;
== 42;

//QUIZ 3
int values[5] = {10, 20, 30, 40, 50};

int* ptr = values;

cout << *ptr << endl; //Reads 10
ptr++; // Increments from 10 to 20. 

cout << *ptr << endl; // Reads 20.
ptr++; // Increments from 20 to 30.

cout << *ptr << endl; // Reads 30.

/*
Output = 10
         20
         30*/
/*
ALSO A FOR LOOP CAN WORK FOR THIS...
for (int i = 0; i < 3; i++){
  cout << "Output = " << *ptr << endl;
  ptr++;
}
*/

// QUIZ 4
int values[5] = {10, 20, 30, 40, 50};

int* ptr = values;


for (int i = 0; i < 3; i++){
  cout << *ptr << " ";
  ptr++;
  
}
//ANSWER = 10 20 30.


//QUIZ 5
int values[5] = {10, 20, 30, 40, 50};

int* ptr = values;

ptr += 2; //Increments from 10 to 30.
// values[0] -> values[2] 

for (int i = 0; i < 2; i++){
         cout << *ptr << " "; // Reads 30. 
         ptr++; // Moves from 30 to 40, and reads it.
// OUTPUT = 30 40. 
}

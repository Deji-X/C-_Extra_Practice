#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main(){

  vector<string> tasks;
  
  cout << "Welcome to Task List Tool!" << endl;
  cout << endl;

  cout << "Menu Options:" << endl;
  cout << "1. Add Task" << endl;
  cout << "2. View Tasks" << endl;
  cout << "3. Quit" << endl;
  cout << endl;

  cout << "Task list system initialized and ready!" << endl;
  
  string task;
  getline(cin, task);
  
  tasks.push_back(task);
  
  cout << "Task \"" << task <<  "\" added successfully!" << endl;

  cout << "Total tasks: " << tasks.size() << endl;
  
 
  
  return 0;
}

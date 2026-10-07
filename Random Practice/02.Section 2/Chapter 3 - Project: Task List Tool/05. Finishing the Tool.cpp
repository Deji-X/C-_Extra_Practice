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

  int n;
  /*string task;
  getline(cin, task);
  tasks.push_back(task);
  */
  cin >> n;
  cin.ignore();

  for (int i = 0; i < n; i++){
    string task;
    getline(cin, task);
    tasks.push_back(task);
  }

  int taskNumber;
  cin >> taskNumber;

  if (taskNumber <= 0 || taskNumber > tasks.size()){
    cout << "Error: Invalid task number. Please enter a number between 1 and " << tasks.size() << "." << endl;
  }
  else {
    int index = taskNumber - 1;
    string removedTask = tasks[index];

    tasks.erase(tasks.begin() + index);

      cout << "Task \"" << removedTask << "\" removed successfully!" << endl;
      
      if (tasks.empty()){
      cout << "No tasks remaining." << endl;
  }
  else {
    cout << "Remaining Tasks:" << endl;

    for (int i = 0; i < tasks.size(); i++){
      cout << i + 1 << ". " << tasks[i] << endl;
    }

    
    }
    cout << "Total tasks: " << tasks.size() << endl;
  } 
  
  return 0;
}

#include <iostream>
#include <string>
using namespace std;

bool is_valid (string username, string password){
  if(username == "admin"){
    return true;
  }
  if (username == "user" && password == "qwerty"){
    return true;
  }
  return false;
  
}

int main(
  string user, pass;
  cin >> user >> pass;
  bool res = is_valid(user, pass);
  cout << (res ? "true" : "false");


  return 0;
);

You'll be building a command-line task list tool that demonstrates how vectors can be used to manage real-world data.

Create the foundation for a command-line task list tool by setting up the basic structure with an empty vector and displaying a welcome message with menu options.

Your program should:

Create an empty std::vector<std::string> named tasks to store task descriptions
Display a welcome message for the task list application
Display a menu showing the available options that users will be able to choose from
Print a message confirming that the task list system is ready to use
Use the following exact output format:

Welcome to Task List Tool!

Menu Options:
1. Add Task
2. View Tasks
3. Quit

Task list system initialized and ready!
This initial setup creates the foundation that will be expanded in the following lessons to build a complete task management application. The empty vector will store all tasks as strings, and the menu shows users what functionality will be available.






LESSON 5
Finishing the Tool

challenge icon
Challenge

Easy
Complete your task list tool by implementing the main program loop that ties all functionality together. This final lesson creates a fully functional task management application that repeatedly displays the menu and processes user commands until they choose to quit.

The following inputs will be provided:

A series of menu choices (integers: 1 for Add Task, 2 for View Tasks, 3 for Remove Task, 4 for Quit)
For Add Task (choice 1): a string representing the task description
For Remove Task (choice 3): an integer representing the task number to remove (1-based indexing)
Your program should:

Start with the same setup from previous lessons (empty std::vector<std::string> named tasks and welcome message)
Create a main loop that continues until the user chooses to quit
Display the menu and read the user's choice for each iteration
Process each menu option:
Choice 1: Read a task description and add it using push_back()
Choice 2: Display all tasks in numbered format, or show "No tasks available." if empty
Choice 3: Read a task number, validate it, and remove the task using .erase()
Choice 4: Exit the program loop
For invalid menu choices, display an error message and continue the loop
Print a goodbye message when the user quits
Use the following exact output format:

Initial setup and menu display:

Welcome to Task List Tool!

Menu Options:
1. Add Task
2. View Tasks
3. Remove Task
4. Quit

Task list system initialized and ready!
For each menu iteration, display:

Choose an option: 
For Add Task (choice 1):

Task "[task description]" added successfully!
Total tasks: [number of tasks]
For View Tasks (choice 2) with tasks:

Your Tasks:
1. [first task]
2. [second task]
...
Total tasks: [number of tasks]
For View Tasks (choice 2) when empty:

No tasks available.
For Remove Task (choice 3) with valid task number:

Task "[removed task description]" removed successfully!
Remaining Tasks:
1. [first remaining task]
...
Total tasks: [updated number of tasks]
For Remove Task (choice 3) with invalid task number:

Error: Invalid task number. Please enter a number between 1 and [total tasks].
For invalid menu choice:

Invalid choice. Please try again.
When user quits (choice 4):

Thank you for using Task List Tool!
Use a while loop that continues until the user enters 4. For the Remove Task functionality, remember to validate that the task number is between 1 and tasks.size() before using tasks.erase(tasks.begin() + index). If the list becomes empty after removal, print "No tasks remaining." instead of the remaining tasks list.



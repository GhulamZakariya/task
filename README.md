# Flutter Interview Practical Test

## Getting Started
This is a quick flutter test to see what you are capable to achieve in a real world scenario.

## Rules

1. You have a max of 45 minutes to complete this assignment;
2. You can use the internet for research;
3. If you don't understand an intruction please feel free to ask the interviewer;
4. The interviewer should not give you hints unless strictly necessary
5. Let the interviewer know if you have finished the test earlier
### Instructions
> **NOTE**: The instructions do not have to be done on this order, feel free to jump between tasks.

### How is the final look of the app
![screenshot](/screenshot.jpeg)

#### TASK 1 - Minor UI changes
- The app shows a red ribbon on the appbar, it looks ugly, please remove it.
- Change the app bar name to `The Interview`

#### TASK 2 - List all users
- List all the users on the home screen (Mock data should be in `data/mock_data.dart`)
- We want to see the First name and last name as a title
- We want to see the role as description
- Show the user image on the left
- The user image should have a placeholder (in case there is no image), please add the package https://pub.dev/packages?q=font_awesome_flutter and use `FontAwesomeIcons.image`

#### TASK 3 - Refactoring & Bug Fixing
- We want the user avatar logic to be a widget, please refactor it in a new file `widgets/avatar`
- `Add user` button is not working, we want a new user to be added but when we press the + button it doesn't do anything
- Clean up the search controller when the widget is removed from the widget tree.

### TASK 4 - Features
- When the app starts the keyboard should show and focus on the search
- Add a search to filter that filters by user's first name, last name, role and email

### TASK 5 - Suggestions
- What would you suggest to improve the code

# Git-Good
Console-based game guaranteed to get you good at Git!

[Check it out!](https://super-confusing-baby.herokuapp.com/)


## API Flow

### Login:
Upon opening the app, user is prompted for username. GET request sent to GitHub API to check if username is valid. If valid, user is prompted for access token. Again, GET request sent to GitHub API to check if access token is valid. 
If both username and access token are valid, continue to Git-Good API steps below...

 - `/users.json?username=:username` GET request to get user who's logging in.
    - if user doesn't exist, `error: No user` -> make new user with POST `/users/new` JSON body:`{ "username" = "<username>", "level" = "1" }`
 - receive user object from API with users __level__.
 
After login, we have user's __level__. Level corresponds to the next exercise they will run.

### Exercise:
Users will be able to start exercises with __exercise__:_difficulty_ <= their __user__:_level_.

 - `/exercises?difficulty=:user_level` GET request for next exercise the user should run.
    #### Steps
     - `/exercises/:id/steps` GET request for array of steps in exercise
        ##### Commands
        - `/exercises/:exercise_id/steps/:step_id/commands` GET request for array of commands in step.
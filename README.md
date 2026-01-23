# GitTutorial
Github repository for Git Tutorial

Install Git: https://git-scm.com/install/windows
Github GUI: https://desktop.github.com/download/

<img width="659" height="648" alt="image" src="https://github.com/user-attachments/assets/87153ec1-45bc-4303-bf73-060cc21518cc" />

# Concepts
* Branch: This is an instance of the repository. The files here could be commited or uncommited. Typically you create a newbranch for every new feature/bug fix so that the main code is not disturbed. After making the planned changes in the branch, you can merge the changes into the main code.
* **main** branch: This is the working code that forms the basis for further development
* HEAD: This is a Pointer. You can see this when you ask for ```git log```. The change made in the repository are reflected in whereever the HEAD is pointing to. If HEAD is point to main branch (**HEAD -> main**) then the changes made in the local reposity are being made to the main branch.
* Commit hash: This is the long code shown for each commit. Can be seen with ```git log```
* Detached HEAD: This is untracked state of the HEAD pointer. This is achieved with ```git checkout <commit hash>```. Any updates and commits done in this state are not stored in git memory So all the update made in this will be deleted by git garbage collection. The right way to make changes using earlier commit as base is 1) ```git checkout <commit hash>``` and 2) ```git branch <branch name>``` 3) ```git checkout <branch name>``` 4) Make changes and then merge into main branch. **Notice that ```git checkout``` works with either commit hash or a branch name but only commithash creates a detached HEAD.**

# Setting up the enviroment
* ```git init```: Initializes the Git environment
* ```git branch -m main```: By default Git creates 'master' branch, bu Github creates it as 'main'. To maintain consistency this command renames the master branch to main
* ```git pull```: If remote repository is already setup. This downloads the latest branch from the remote repository. This only changes the current branch the HEAD is pointing to.
* Create .gitignore: Create this file to list the files/folders that shouldn't be tracked by Git. Typically these could be .sbproj, data files 
* ```git branch <branch name>```: Creates a new branch. **Ideally always create a new branch to make the changes. Push only this branch after making local commits and then create a Pull Request (PR) on Github for the administrator to verify changes and merge into main branch.**
* ```git add <filename>``` or ```git add *```: Add the file changes to the staging area
* ```git commit -m <commit message>```: Commits the changes from staging area to local repo for permanent tracking. Make sure to add good commit messages for easier tracking.
*   ```git log``` or ```git log --oneline```: Shows the git commit history and the HEAD location

## To merge the local branch into local main:
* ```git checkout main```. This moves the HEAD to point to main branch
* ```git merge <branch name>```: Updates main branch with content of <branch name>

## Setting up the connection to remote branch (Using Github as the example only here)
* git add origin <github repo link>
* git clone <github repo link>: Use this if there is a github repo already created and you want to build on it. This downloads the entire branches, commits into local repo.
* git branch

## Going back to earlier commits
* ```git checkout <commit hash>```: This moves the HEAD to a past commit for **View only**. 

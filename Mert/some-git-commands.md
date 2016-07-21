#Git Tutorial -ish

This is a small tutorial on the most used commands on GitHub. If you have any questions or if you think the info given is wrong, feel free to contact me.

##Update the current repo on Main Branch

To get the final updates, use this command.

`git pull`


##See the repo's update status
To see repo's status, use this line

`git status`


##Add file for commit list
If your work is done with a file, you can add it to commit list with this command.

`git add filename.extension`


##Prepare file for commiting
If you have added the files that you wish to commit with `git add` command, you can use this command to commit it for pushing.

`git commit -m "your comment here"`

##Create a branch
This command creates a new branch with 'some-new-name' . You can change this however you want.

`git chechout -b some-new-name`

##Switch branch
You can switch between branches that are created before if you are allowed to.

`git checkout branch-name`

##Differ file
`git diff filename`

##Remote file


`git remote -v`


##Push your branch

`git push origin branch-name-that-will-be-pushed`

##Get the latest changes in master branch and apply to your commit
Before pushing your file, if you don't have the final repo of master branch, GitHub won't let you publish your changes. Therefore, this command is necessary if you are not working on the recent version of the project

`git pull --rebase origin master`

##Force your push request
Force your way to push the changes even if it has conflicts. Proceed with caution.

`git push origin my-username --force`

##Stash the changes
For changes planned to be commited later or is not planned to commit, we can use this command

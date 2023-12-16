git --> distributed version control system <br>
svm --> centralized version control system

RAID --> redundant array of independent disks

in a RAID usable space < actual space 

create public repo --> settings --> dev settings --> access token (name = repo_name) --> save token in pat.txt in one level above the repo --> git clone repo --> enter code as password of the repo --> git init --> git config --global user.name "user_name" --> git config --global user.email "user_email" --> git remote add master link --> make change --> git status --> git add file_name (only the specific file will be added) --> git commit -m "first commit" --> git push --> git status 

### git branch 
git branch --> git branch "branch_name" --> git checkout branch_name --> git status --> change file --> git add file_name --> git commit --> git push --set-upstream origin branch_name

### merge 
git status --> git checkout main --> git merge branch_name --> compare and pull request --> confirm and merge --> delete branch 

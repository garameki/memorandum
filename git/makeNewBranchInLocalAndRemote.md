MAKE NEW BRANCH IN LOCAL AND REMOTE  
===================================  
  
1.git checkout -b developBranch  
  - this means..  
    1. git branch developBranch --make new branch 'developBranch'  
    1. git checkout developBranch --go to new branch 'developBranch'  
  
2.git push --set-upstream origin developBranch
  - this means that make developBranch in remote origin repository  
  
  SUMMARY
  =======
  
  1.git checkout -b developBranch  
  2.git push --set-upstream origin developBranch  
  
OR below to operate in detail  
  
1.git branch -r  
2.git branch developBranch  
3.git checkout developBranch  
4.git push --set-upstream origin developBranch

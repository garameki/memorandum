HOW TO MERGE TEST BRANCH TO MASTER BRANCH  
===========================================

Go to master branch using "git checkout master"  
Merge using "git merge test"
If it might be conflict between two branches,you had to merge by hand.

SUMMARY
========
  
 ```
1.git checkout test  
2.git add *  
3.git commit -m "COMMENT"  
4.git checkout master  
5.git merge test  
```
After merge has been finished...  
```
6.git branch --merged  
7.git branch -d test  
```
After removing has been completed...  
```
8.git branch -r  
9.git push --delete origin test  
10.git show-branch  
```
If master is remained,it's OK.    

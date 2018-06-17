STASH  
=========  
when you will have to reference old file,  
you must use 'git stash' command before using 'git checkout' command.
Otherwise you might bring files repaired and not commited to the destination commit.  
  
---------------------------------------------------------    
```  
git stash  
git show-branch  
git checkout <name>   
--do something(copy and so on)--  
git checkout <name>  
git stash list
`git stash apply stash@{NUMBER}` or `git stash pop --index`  
```  

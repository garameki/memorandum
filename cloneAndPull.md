#  DIFFERENCE BETWEEN PULL AND CLONE

It assumes that `https://github.com/garameki/WebGL_Test` have 3 branches,`master`,`sunlight` and `sunlight2`,  
  
`git pull https://github.com/garameki/WebGL_Test` command makes only `master` branch in current directory of your computer.  
  
On the other hand,  
`git clone https://github.com/garameki/WebGL_Test` makes new directory `WebGL_Test` in current directory of your computer  
and makes only `master` branch in it.  
  
But all commits of "sunlight" and "sunlight2" is in it as well.  
  
It can be realized by the command `git branch -r`.  
It shows  
```  
*origin/HEAD -> origin/master
 *origin/master
 *origin/master2
 *origin/sunlight2
```  

So you can checkout `origin/sunlight2`  
but there will not be the name of branch `sunlight2` yet.  
Therefore you must use the command `git checkout- b <new-branch-name>` in the commit you want to rename and devide flow.  
  
SUMMARY
========
```
1.cd %HOME%git  
2.git clone https://<span></span>github.com/garameki/WebGL_Test.git  
3.cd WegGL_Test  
4.git show-branch   
5.say 'Oh,no.'  
6.git branch -r  
7.git checkout origin/sunlight2  
8.git checkout -b saturn  
```

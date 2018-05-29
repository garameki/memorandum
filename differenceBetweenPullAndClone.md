#  DIFFERENCE BETWEEN PULL AND CLONE

When "https://<span></span>github.com/garameki/WebGL_Test" have 3 branches,"master","sunlight" and "sunlight2",  
  
"git pull https://<span></span>github.com/garameki/WebGL_Test" command makes "master" only in current directory,  

or  
  
"git clone https://<span></span>github.com/garameki/WebGL_Test" makes new directory "WebGL_Test" and only master branche in it.  


But "git clone https://<span></span>github.com/garameki/WebGL_Test" command makes all commits of "sunlight" and "sunlight2" as well.

It can be realized by the command "git branch -r"
It shows
 *origin/HEAD -> origin/master
 *origin/master
 *origin/master2
 *origin/sunlight2

So you can checkout "origin/sunlight2"
but the name of branch isn't "sunlight2" yet,
so you must use the command "git checkout- b <new-branch-name>" to corrent commit


FAST-FORWARD  
============
Before  
------
```
release    2--3--4
          /      
repair   1
```

Command  
-------  
```git checkout repair```  
```git rebase release```  
  
```
message:
Fast-forwarded repair to release
```

After
------
```
release    2--3--4
          /
repair   1---------3--4
```
  
Log  
----
```git checkout repair```
```git log```

```
1--3--4
```

FAST-FORWARD  
============
```
note:You need to non-fast-forward merge,do not rebase!
```



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
```git rebase release```repair is put on release , release will be base   
modify...  
```git add -u```  
```git commit```    
```
message:
Fast-forwarded repair to release
```

After
------
```
release   1---------3--4
                        \
repair                   5
```
  
Log  
----
```git checkout repair```  
```git log```

```
1--3--4
```

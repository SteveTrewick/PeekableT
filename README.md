# PeekableT

A bone simple peekable iterator because I have written this or
simmilar code dozens of times.

```
  let peekable = Peekable<Int>(elements: [1,2,3])
  
  peekable.next() == 1
  peekable.peek() == 2
  peekable.next() == 2
  ...
  
```

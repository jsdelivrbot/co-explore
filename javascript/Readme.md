
# Demo of Jasmine spyOn feature

Demo to illustrate the difference between 1 and 2 below.

1.  spyOn(fooObject, 'barFunction')
2.  spyOn(fooObject, 'barFunction').and.callThrough()

1 tracks calls to barFunction but *doesn't* delegate them to fooObject,
2 tracks calls to barFunction and *does* delegate them to fooObject,

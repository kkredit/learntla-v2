target: specs/threads/liveness_1/threads.tla
!!!
!tlacli check % --prop Liveness --model-value NULL
!!!
---- MODULE threads_liveness__1 ----
EXTENDS TLC, Sequences, Integers
CONSTANT NULL

NumThreads == 2
Threads == 1..NumThreads

(* --algorithm threads

variables 
  counter = 0;
  lock = NULL;

define
  Liveness ==
    <>(counter = NumThreads)
end define;  

process thread \in Threads
variables tmp = 0;
begin
  GetLock:
    await lock = NULL;
    lock := self;

  GetCounter:
    tmp := counter;

  IncCounter:
    counter := tmp + 1;
  
  ReleaseLock:
    lock := NULL; 
end process;
end algorithm; *)
====

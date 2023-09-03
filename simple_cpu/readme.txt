
test/test_prog.sv is where the tested assemble code stores

My cpu supports those commands:

mov A0,1
mov A1,A0
add A1,A2 ;; which adds A1 and A2 together then write the sum into A1
add A1,3 
sub 
mul
out A0 ;; make the output of the cpu to be the data stored in A0

run command "make simul" and you will see the result printed


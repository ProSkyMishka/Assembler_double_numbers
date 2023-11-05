.include "macrolib.s"
.include "new_macro.s"

.global test

.data
X_1:	.double 0.5
X_2:	.double -0.55
X_3:	.double 0.1
X_4:	.double -0.1	
.text
test:
	# tests:
test1:	
	print_str("Test #1. x = 0.5")
    	newline
     	fld fa1 X_1 t0 	# set X_1 into fa1
     	newline
     	
     	print_str("Expected result from calculator = 2.")
     	newline
     	
     	print_str("Our result = ")
     	
     	calculate(fa1)
     	
	print_double(fa0)
	newline
	newline
	
test2:	
	print_str("Test #2. x = -0.55")
    	newline
     	fld fa1 X_2 t0 	# set X_2 into fa1
     	newline
     	
     	print_str("Expected result from calculator = 0.64516129.")
     	newline
     	
     	print_str("Our result = ")
     	
     	calculate(fa1)
     	
	print_double(fa0)
	newline
	newline
	
test3:	
	print_str("Test #3. x = 0.1")
    	newline
     	fld fa1 X_3 t0 	# set X_3 into fa1
     	newline
     	
     	print_str("Expected result from calculator = 1.1111.")
     	newline
     	
     	print_str("Our result = ")
     	
     	calculate(fa1)
     	
	print_double(fa0)
	newline
	newline

test4:	
	print_str("Test #4. x = -0.1")
    	newline
     	fld fa1 X_4 t0 	# set X_4 into fa1
     	newline
     	
     	print_str("Expected result from calculator = 0.90909091.")
     	newline
     	
     	print_str("Our result = ")
     	
     	calculate(fa1)
     	
	print_double(fa0)
	newline
	newline
	end		# finish program
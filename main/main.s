.include "macrolib.s"
.include "new_macro.s"

.global main

.data
    left:    .double -1
    right:    .double 1
    
.text
main:
    	fld ft0 left t0        	# set left bound for x
      	fld ft1 right t0    	# set right bound for

    	print_str("-1 < x < 1\nx = ")    # print string for x
    
        read_double_fa0     	# read x into fa0
        fmv.d fa1 fa0        	# move fa0 into fa1
             
        checking        	# check bounds for x
        bnez a0 error        	# if user write wrong value for x, gives error
        
    	print_str("1/(1-x) = ")    # print result string
    
    	calculate(fa1)        	# calculate result
    
    	print_double(fa0)    	# print result
    	newline
    
    	end            		# finish program

error:
        print_str("Incorrect X")    # print error string
        end            		# finish program

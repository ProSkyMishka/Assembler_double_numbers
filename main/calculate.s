.global calculate

.data
precision: .double 0.0005       # the possible deviation
zer: .double 0            	# local double zero
one: .double 1          	# local double one

.text
calculate:
    	fld     fa0 one t0      # current result = 1.0
        fld     ft4 one t0    	# current value = 1.0
        fld     ft5 zer t0     	# variable for checking = 0.0
        fld     ft6 one t0   	# ft6 = 1.0
        fld     ft7 precision t0   # precision = 0.0005
while:

        fmul.d	ft4 ft4 ft2  	# current value *= x
        fadd.d  fa0 fa0 ft4  	# current result += current value

        fmv.d   ft5 ft4       	# move current value into ft5
        fabs.d  ft5 ft5      	# ft5 = abs(current value)
        fge.d   a0 ft5 ft7    	# Check if (abs(current value) >= precision)
        beqz   	a0 cond

        j     	while

    end_while:
        ret    			# finish calculate
    cond:
        fsub.d  ft8 ft6 ft2  	# ft7 = 1 - x
        fdiv.d  ft8 ft5 ft8  	# ft7 = abs(current value) / (1 - x)
        fge.d   a0 ft8 ft7   	# Check if (ft7 >= precision)
        beqz    a0 end_while

        j while

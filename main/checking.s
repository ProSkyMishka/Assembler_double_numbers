.global checking

#check left and right bounds of interval
checking:
    	fgt.d t0 fa1 ft0     	# if x <= -1, t0 = 0, else t0 = 1
    	beqz t0 error        	# if t0 = 0, baranch to error
    	fgt.d t1 ft1 fa1    	# if x >= 1, t0 = 0, else t0 = 1
    	beqz t1 error        	# if t0 = 0, baranch to error
    	li a0 0            	# a0 = 0
    	ret            		# finish the subprogram

error:
    	li a0 1            	# a0 = 1
    	ret            		# finish the subprogram

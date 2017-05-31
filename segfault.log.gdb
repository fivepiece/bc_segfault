Starting program: /home/arubi/software/deps/bc-1.07/bc/bc ./segfault.bc

Program received signal SIGSEGV, Segmentation fault.
get_array_num (var_index=33, idx=idx@entry=0) at storage.c:383
383	  a_var = ary_ptr->a_value;
#0  get_array_num (var_index=33, idx=idx@entry=0) at storage.c:383
#1  0x000055555555c0db in process_params (progctr=0x555555767460 <pc>, func=func@entry=1) at storage.c:1021
#2  0x0000555555559c41 in execute () at execute.c:157
#3  0x000055555555ca8c in run_code () at util.c:295
#4  0x00005555555560c6 in yyparse () at ../../bc/bc.y:134
#5  0x0000555555555465 in main (argc=2, argv=0x7fffffffe128) at main.c:260
378	      ary_ptr->a_value = NULL;
379	      ary_ptr->a_next = NULL;
380	      ary_ptr->a_param = FALSE;
381	    }
382	
383	  a_var = ary_ptr->a_value;
384	  if (a_var == NULL) {
385	    a_var = ary_ptr->a_value = bc_malloc (sizeof (bc_array));
386	    a_var->a_tree = NULL;
387	    a_var->a_depth = 0;

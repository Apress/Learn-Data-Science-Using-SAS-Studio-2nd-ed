data class_running_total;
   set sashelp.class;
   retain total_height 0; /* Ensure value persists */
   total_height = total_height + height;
   put name= height= total_height=; /* Print values for verification */
run;

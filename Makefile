###############################################################
#   Students' Makefile for Operating Systems Project          #
#                     Use As Is                               #
###############################################################


# The assignment directory 
ASG_DIR = /home/osp/a2.linux/

# The default C compiler 
C_COMP = cc 


#make OSP:  

OSP : $(ASG_DIR)osp.o dialog.o cpu.o queueLibrary.o
	$(C_COMP) $(FLAGS) $(ASG_DIR)osp.o dialog.o cpu.o queueLibrary.o -lm -g -o OSP

dialog.o : dialog.c
	$(C_COMP) $(FLAGS) -c -g dialog.c

cpu.o : cpu.c 
	$(C_COMP) $(FLAGS) -c -g cpu.c 


# Tools, tools' path and flags
TOOLCH = .
LINKER = 
CXX = g++.exe
CC = gcc.exe
AS = as.exe
NAS = nasm.exe
CFLAGS = -Wall -std=c++11

ASFLAGS = 
NASFLAGS = -g
# Output constants (filenames and paths)
EXECPATH = .
BOUT = .
# Executable filename:
EXE_OUT = out.exe
################# Includes #################

include .\subdir.mk

############### Main targets ###############

all: executable_link

# Link all those subdir.mk object files into the whole Kernel:
executable_link: $(OBJS)
	@echo '----------'
	@echo '>>>> Linking Executable <<<<'
	@echo '>>>> Invoking: GCC Linker <<<<'
	$(CXX) $(CFLAGS) -o $(EXECPATH)\$(EXE_OUT) $(OBJS)
	@echo '>>>> Finished building target: $@ <<<<'
	@echo '----------'

clean:
	rm $(BOUT)/*.o

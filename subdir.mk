OBJS += \
$(BOUT)\example.o

$(BOUT)\example.o: .\example.c 
	@echo '>> Building file: $<'
	@echo '>> Invoking GCC Compiler'
	$(CXX) $(CFLAGS)  -o $@ -c $<  
	@echo '>> Finished building: $<'
	@echo ' '

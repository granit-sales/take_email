inre = File.open("web2.txt", "r")
@str_file = ''
	
	while(line = inre.gets)
		@str_file = @str_file+line
	end

inre.close

@str_file2 = @str_file.scan(/href="mailto:........................................./)

#puts(@str_file2)

File.write("email2.txt", @str_file2)

	#@str_file2.each { |x| output.write x \n }


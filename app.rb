inre = File.open("web_build_2.txt", "r")
@str_file = ''
	
	while(line = inre.gets)
		@str_file = @str_file+line
	end

inre.close

@str_file2 = @str_file.scan(/href="mailto:........................................./)
@str_file2.map! { |n| n.split(??)[0] }
#puts(@str_file2)

File.write("email_build_2.txt", @str_file2)

	#@str_file2.each { |x| output.write x \n }



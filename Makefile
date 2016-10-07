lexer=asm1.l

grammar=asm1.y
parser=asm1.js

tstfile=tstfiles/hello2.asm

jison: 
	jison $(grammar) $(lexer)


hello:
	node asm1.js $(tstfile)




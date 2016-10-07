ID          [A-Z-]+"?"?
NUM         ([1-9][0-9]+|[0-9])


%%

[\s\t]+            /* ignore */
";".*              /* ignore comments */

r{NUM}    return 'REG'
0x[A-Fa-f0-9]+ return 'HEX'
{NUM}     return 'NUMBER'
','       return ','

add        return 'A'
ld         return 'L'
st         return 'S'

<<EOF>>   return 'EOF'
.         return 'LERROR'


for i in ${*}
do
	case $i in
	 "logica")
	  echo -e "LOGICA:\n! - Unary negation operator\n-a - Binary AND operator\n-o - Binary OR operator (the -a operator has higher precedence than the -o operator)\n\(Expression\) - Parentheses for grouping must be escaped with a backslash '\'"
	esac

        case $i in
         "aritimetica")
          echo -e "ARITIMETICA\nInteger1 -eq Integer2 - Integer1 and Integer2 variables are algebraically equal\n-ne - not equal\n-gt - greater than\n-ge - greater or equal\n-lt - less than\n-le - less or equal"
        esac

        case $i in
         "strings")
          echo -e "STRINGS:\n-n String1 - the length of the String1 variable is nonzero\n-z String1 - the length of the String1 variable is 0 (zero)\nString1 = String2 - String1 and String2 variables are identical\nString1 != String2 - String1 and String2 variables are not identical\nString1 - true if String1 variable is not a null string"
        esac

        case $i in
         "variaveis")
          echo -e "VARIAVEIS\nNao achei nada sobre, mas acho que deve ser a mesma coisa que aritimetria????"
        esac

        case $i in
         "arquivos")
          echo -e "ARQUIVOS:\n-e FileName - FileName exists\n-b Filename - Returns a True exit value if the specified FileName exists and is a block special file\n-c FileName - FileName is a character special file\n-d FileName - FileName is a directory\n-f FileName - FileName is a regular file\n-g FileName - FileName's Set Group ID bit is set\n-h FileName - FileName is a symbolic link\n-k FileName - FileName's sticky bit is set\n-L FileName - FileName is a symbolic link\n-p FileName - FileName is a named pipe (FIFO)\n-r FileName - FileName is readable by the current process\n-s FileName - FileName has a size greater than 0\n-t FileDescriptor - FileDescriptor is open and associated with a terminal\n-u FileName - FileName's Set User ID bit is set\n-w FileName - FileName's write flag is on. However, the FileName will not be writable on a read-only file system even if test indicates true\n-x FileName - FileName's execute flag is on. If the specified file exists and is a directory, the True exit value indicates that the current process has permission to change cd into the directory."
        esac


done

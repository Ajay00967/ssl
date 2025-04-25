ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'a \\n' wolfFox.txt 
1. wolf wolf wolf wolf


2. Wolf wolf Wolf WoLf


3. WoLf WOlf WolF


4. WOLf WOlf WOLF


5. wolfISWolf WOlfISwoLF


6. NO_w.olf in this line


ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'a \\' wolfFox.txt
1. wolf wolf wolf wolf

2. Wolf wolf Wolf WoLf

3. WoLf WOlf WolF

4. WOLf WOlf WOLF

5. wolfISWolf WOlfISwoLF

6. NO_w.olf in this line

ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'a \\\' wolfFox.txt
1. wolf wolf wolf wolf
\
2. Wolf wolf Wolf WoLf
\
3. WoLf WOlf WolF
\
4. WOLf WOlf WOLF
\
5. wolfISWolf WOlfISwoLF
\
6. NO_w.olf in this line
\
ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'a \\\\' wolfFox.txt
1. wolf wolf wolf wolf
\
2. Wolf wolf Wolf WoLf
\
3. WoLf WOlf WolF
\
4. WOLf WOlf WOLF
\
5. wolfISWolf WOlfISwoLF
\
6. NO_w.olf in this line
\
ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'a \\\\\' wolfFox.txt
1. wolf wolf wolf wolf
\\\
2. Wolf wolf Wolf WoLf
\\\
3. WoLf WOlf WolF
\\\
4. WOLf WOlf WOLF
\\\
5. wolfISWolf WOlfISwoLF
\\\
6. NO_w.olf in this line
\\\
ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'a \\\\\\' wolfFox.txt
1. wolf wolf wolf wolf
\\
2. Wolf wolf Wolf WoLf
\\
3. WoLf WOlf WolF
\\
4. WOLf WOlf WOLF
\\
5. wolfISWolf WOlfISwoLF
\\
6. NO_w.olf in this line
\\
ajay@Ajay:/mnt/c/ssl/lectures/06-Sed_Awk/sed/sed$ sed 'G' wolfFox.txt 
1. wolf wolf wolf wolf

2. Wolf wolf Wolf WoLf

3. WoLf WOlf WolF

4. WOLf WOlf WOLF

5. wolfISWolf WOlfISwoLF

6. NO_w.olf in this line


#include <stdio.h>
#include <string.h>
/* This is a one line comment */
/* This is a 2 line
comment */
/* this is almost a recursive comment
\* continue with second line *\/
*/
int main()
{ // Testing for string literals and behavior of C
char s1[] = "abcd \
1234";
char s2[] = "1234""";
char s3[] = """"; // null string
char s4[] = "ab""cd""ef"; // no error generates single string
// abcdef "" possibly means null string
char s5[] ="abcd" "1234";
/* This is a 2 line
comment */
char* mystr = "Here is the first line.\nHere is the second line.";
printf("%s %ld \n", s1, strlen(s1));
printf("%s %ld \n", s2, strlen(s2));
printf("%s %ld \n", s3, strlen(s3));
printf("%s %ld \n", s4, strlen(s4));
printf("%s %ld \n", s5, strlen(s5));
printf("%s %ld \n", mystr, strlen(mystr));
/* this is close to a recursive comment
\* continue with second line *\/
*/
return 0;
}/
*/

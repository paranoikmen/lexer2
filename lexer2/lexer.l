%option noyywrap
%option never-interactive
%option yylineno

%{
	#include <stdio.h>

    void remove_char_from_str(const char * str, char * dest, char deleted_char);
%}

DIGIT       [0-9]
HEX_DIGIT   [0-9A-Fa-f]
OCT_DIGIT   [0-7]
BIN_DIGIT   [01]
EXPONENT    [eE][+-]?[1-9](_?[0-9])*

%x ML_COMMENT
%x EXEC_OP

%% 

%{
    int num;
    float real_num;
    char temp1[100];
    char temp2[100];
%}

// todo


boolean             { printf("Found integer\n";) }
integer
float
double
string
array
object
callable
iterable
resourse
NULL
mixed
number
array|object
void
$...
echo
//
/* */
#
''

""
\n
\r
\t
\v
\e
\f
\\
\$
\"

<<<
<<<''


if
else
elseif  
else if
while
do-while
for
foreach
break
continue
switch
declare
return
require
include
require_once
include_once
goto

class
function
final 
private
protected
public
static
const
new
extends
foreach
as
implements
use
clone
throw
include
print
namespace


&&
||
AND
or
and
OR
xor
[]
{}
+=
-=
*=
/=
%=
**=
=
==
===
!=
<>
!==
&
^
|
<<
>>
<
<=
>
>=
<=>
@
++a
a++
--a
a--
!
.
.=
instanceof
?:
??
...


boolval
debug_​zval_​dump
doubleval
empty
floatval
get_​defined_​vars
get_​resource_​type
gettype
intval
is_​array
is_​bool
is_​callable
is_​countable
is_​double
is_​float
is_​int
is_​integer
is_​iterable
is_​long
is_​null
is_​numeric
is_​object
is_​real
is_​resource
is_​scalar
is_​string
isset
print_​r
serialize
settype
strval
unserialize
unset
var_​dump
var_​export

connection_​aborted
connection_​status
constant
define
defined
die
eval
exit
get_​browser
_​_​halt_​compiler
highlight_​file
highlight_​string
hrtime
ignore_​user_​abort
pack
php_​strip_​whitespace
sapi_​windows_​cp_​conv
sapi_​windows_​cp_​get
sapi_​windows_​cp_​is_​utf8
sapi_​windows_​cp_​set
sapi_​windows_​generate_​ctrl_​event
sapi_​windows_​set_​ctrl_​handler
sapi_​windows_​vt100_​support
show_​source
sleep
sys_​getloadavg
time_​nanosleep
time_​sleep_​until
uniqid
unpack
usleep



// end todo






abstract                { printf("Found ABSTRACT_KEYWORD\n"); }
and			            { printf("Found AND_KEYWORD\n"); }
array                 { printf("Found AND_KEYWORD\n"); }
as                      { printf("Found AS_KEYWORD\n"); }            
break		            { printf("Found BREAK_KEYWORD\n"); }
callable		        { printf("Found CALLABLE_KEYWORD\n"); }
case		            { printf("Found CASE_KEYWORD\n"); }
catch                   { printf("Found CATCH_KEYWORD\n"); }
class		            { printf("Found CLASS_KEYWORD\n"); }
clone                   { printf("Found CLONE_KEYWORD\n"); }
const                   { printf("Found CONST_KEYWORD\n"); }
continue                { printf("Found CONTINUE_KEYWORD\n"); }
declare                 { printf("Found DECLARE_KEYWORD\n"); }
default			        { printf("Found DEFAULT_KEYWORD\n"); }
die	                { printf("Found DIE_KEYWORD\n"); }
do			            { printf("Found DO_KEYWORD\n"); }
echo                    { printf("Found ECHO_KEYWORD\n"); }
if			            { printf("Found IF_KEYWORD\n"); }
else		            { printf("Found ELSE_KEYWORD\n"); }
elseif		            { printf("Found ELSEIF_KEYWORD\n"); }
empty                 { printf("Found EMPTY_KEYWORD\n"); }
enddeclare              { printf("Found ENDDECLARE_KEYWORD\n"); }
endfor			        { printf("Found ENDFOR_KEYWORD\n"); }
endforeach			    { printf("Found ENDFOREACH_KEYWORD\n"); }
endif                   { printf("Found ENDIF_KEYWORD\n"); }
endswitch		        { printf("Found ENDSWITCH_KEYWORD\n"); }
endwhile                { printf("Found ENDWHILE_KEYWORD\n"); }
eval                  { printf("Found EVAL_KEYWORD\n"); }
exit                  { printf("Found EXIT_KEYWORD\n"); }
extends                 { printf("Found EXTENDS_KEYWORD\n"); }
final                   { printf("Found FINAL_KEYWORD\n"); }
finally                 { printf("Found FINALLY_KEYWORD\n"); }
fn                      { printf("Found FN_KEYWORD\n"); }
for			            { printf("Found FOR_KEYWORD\n"); }
foreach                 { printf("Found FOREACH_KEYWORD\n"); }
function                { printf("Found FUNCTION_KEYWORD\n"); }
global                  { printf("Found GLOBAL_KEYWORD\n"); }
goto                    { printf("Found GOTO_KEYWORD\n"); }
implements              { printf("Found IMPLEMENTS_KEYWORD\n"); }
include			        { printf("Found INCLUDE_KEYWORD\n"); }
include_once            { printf("Found INCLUDE_ONCE_KEYWORD\n"); }
instanceof		        { printf("Found INSTANCEOF_KEYWORD\n"); }
insteadof		        { printf("Found INSTEADOF_KEYWORD\n"); }
interface               { printf("Found INTERFACE_KEYWORD\n"); }
isset                { printf("Found ISSET_KEYWORD\n"); }
list                  { printf("Found LIST_KEYWORD\n"); }
namespace               { printf("Found NAMESPACE_KEYWORD\n"); }
new                     { printf("Found NEW_KEYWORD\n"); }
or			            { printf("Found OR_KEYWORD\n"); }
print                   { printf("Found PRINT_KEYWORD\n"); }
private                 { printf("Found PRIVATE_KEYWORD\n"); }
protected               { printf("Found PROTECTED_KEYWORD\n"); }
public                  { printf("Found PUBLIC_KEYWORD\n"); }
require                 { printf("Found REQUIRE_KEYWORD\n"); }
require_once            { printf("Found REQUIRE_ONCE_KEYWORD\n"); }
return		            { printf("Found RETURN_KEYWORD\n"); }
static                  { printf("Found STATIC_KEYWORD\n"); }
switch                  { printf("Found SWITCH_KEYWORD\n"); }
throw		            { printf("Found THROW_KEYWORD\n"); }
trait		            { printf("Found TRAIT_KEYWORD\n"); }
try                     { printf("Found TRY_KEYWORD\n"); }
unset                 { printf("Found UNSET_KEYWORD\n"); }
use                     { printf("Found USE_KEYWORD\n"); }
var                     { printf("Found VAR_KEYWORD\n"); }
while		            { printf("Found WHILE_KEYWORD\n"); }
xor                     { printf("Found XOR_KEYWORD\n"); }
yield		            { printf("Found YIELD_KEYWORD\n"); }

"+"         { printf("Found ARITHMETIC_PLUS_OP\n"); }   
"-"         { printf("Found ARITHMETIC_MINUS_OP\n"); }
"*"         { printf("Found ARITHMETIC_MUL_OP\n"); }
"/"         { printf("Found ARITHMETIC_DIV_OP\n"); }
"%"         { printf("Found ARITHMETIC_MOD_OP\n"); }
"**"        { printf("Found ARITHMETIC_POW_OP\n"); }

"="         { printf("Found ASSIGN_OP\n"); }
"+="        { printf("Found ADD_ASSIGN_OP\n"); }
"-="        { printf("Found SUB_ASSIGN_OP\n"); }
"*="        { printf("Found MUL_ASSIGN_OP\n"); }
"/="        { printf("Found DIV_ASSIGN_OP\n"); }
"%="        { printf("Found MOD_ASSIGN_OP\n"); }

"&="        { printf("Found BIN_AND_OP\n"); }
"|="        { printf("Found BIN_OR_OP\n"); }
"^="        { printf("Found BIN_XOR_OP\n"); }
"^="        { printf("Found BIN_XOR_OP\n"); }
"<<="       { printf("Found BIN_LEFT_SHIFT_ASSIGN_OP\n"); }
">>="       { printf("Found BIN_RIGHT_SHIFT_ASSIGN_OP\n"); }

".="        { printf("Found CONCAT_OP\n"); }
"??="       { printf("Found NULL_ASSIGN_OP\n"); }

"&"         { printf("Found BIN_AND_OP\n"); }
"|"         { printf("Found BIN_OR_OP\n"); }
"^"         { printf("Found BIN_XOR_OP\n"); }
"~"         { printf("Found BIN_ONES_COMPLEMENT_OP\n"); }
"<<"        { printf("Found BIN_LEFT_SHIFT_OP\n"); }
">>"        { printf("Found BIN_RIGHT_SHIFT_OP\n"); }

"=="        { printf("Found EQL_OP\n"); }
"==="       { printf("Found CASE_EQL_OP\n"); }
"!="        { printf("Found NOT_EQL_OP\n"); }
"<>"        { printf("Found NOT_EQL_OP\n"); }
"!=="       { printf("Found CASE_NOT_EQL_OP\n"); }
"<"         { printf("Found LESS_OP\n"); }
">"         { printf("Found GREATER_OP\n"); }
"<="        { printf("Found LESS_OR_EQL_OP\n"); }
">="        { printf("Found GREATER_OR_EQL_OP\n"); }
"<=>"       { printf("Found COMB_COMPRASION_OP\n"); }

"and"       { printf("Found LOGICAL_AND_OP\n"); }
"or"        { printf("Found LOGICAL_OR_OP\n"); }
"xor"       { printf("Found LOGICAL_XOR_OP\n"); }
"&&"        { printf("Found LOGICAL_AND_OP\n"); }
"||"        { printf("Found LOGICAL_OR_OP\n"); }
"!"         { printf("Found LOGICAL_NOT_OP\n"); }

"++"        { printf("Found LOGICAL_XOR_OP\n"); }
"&&"        { printf("Found LOGICAL_AND_OP\n"); }
"||"        { printf("Found LOGICAL_OR_OP\n"); }
"!"         { printf("Found LOGICAL_NOT_OP\n"); }

"@"         { printf("Found ERROR_HANDLER_OP\n");}

"("         { printf("Found OPEN_ROUND_BRACKET\n"); }
")"         { printf("Found CLOSE_ROUND_BRACKET\n"); }
"{"         { printf("Found OPEN_CURLY_BRACKET\n"); }
"}"         { printf("Found CLOSE_CURLY_BRACKET\n"); }
"["         { printf("Found OPEN_SQUARE_BRACKET\n"); }
"]"         { printf("Found CLOSE_SQUARE_BRACKET\n"); }
"<"         { printf("Found OPEN_ANGLE_BRACKET\n"); }
">"         { printf("Found CLOSE_ANGLE_BRACKET\n"); }

0|[1-9]{DIGIT}*(_{DIGIT}+)*  { 
                                remove_char_from_str(yytext, temp1, '_');
                                num = atoi(temp1);
                                printf("Found decimal number %d\n", num);
                             }

0{OCT_DIGIT}+(_{OCT_DIGIT}+)*    {
                                    remove_char_from_str(yytext, temp1, '_');
                                    sscanf(temp1,"%o",&num);
                                    printf("Found octal number %d\n", num);
                                 }

0[xX]{HEX_DIGIT}+(_{HEX_DIGIT}+)*   {
                                        remove_char_from_str(yytext + 2, temp1, '_');
                                        sscanf(temp1,"%x",&num);
                                        printf("Found hex number %d\n", num);
                                    }

0[bB]{BIN_DIGIT}+(_{BIN_DIGIT}+)*   { // todo
                                        
                                    }


(0|[1-9](_?{DIGIT})*)(\.{DIGIT}(_?{DIGIT})*)?({EXPONENT})?  {
                                                                 remove_char_from_str(yytext,temp1,'_');
                                                                 real_num = atof(temp1);
                                                                 printf("Found float number %f\n", real_num); 
                                                            }

"`"                 { BEGIN(EXEC_OP); }
<EXEC_OP>[^\`\\\n]  { printf(yytext + 1); }
<EXEC_OP>\\n        { printf("Syntax error: Line translation found."); }
<EXEC_OP>.+\`       { BEGIN(EXEC_OP); }

(#|\/\/).*       { printf("Found single-line comment: %s\n", yytext + 1); }

// todo multiline comment

%% 

void remove_char_from_str(const char * str, char * dest, char deleted_char) {
	int j = 0;
	
    for(int i = 0; str[i] != 0; i++) {
        if(str[i] != deleted_char) {
            dest[j++] = str[i];
        }
    }

    dest[j] = 0;
}

void main(int argc, char** argv)
{
    yyin = fopen(argv[1], "r" );

    yylex();
    return;
}
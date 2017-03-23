
%%

%line
%column

//enconding
%unicode

%standalone

%class Mainbrgccf

//Declarações - PADROES
letter          = [a-zA-z]
digit           = [0-9]
integer         = [1-9]{digit}*|[0]
alphanumeric    = {letter}|{digit}
identifier      = {letter}({alphanumeric})*
whitespace      = [ \n\t\r\f]
comment_line    = "//".*
comment_ext     = [/][*][^*]*[*]+([^*/][^*]*[*]+)*[/]
operators       = [&&]|[<]|[==]|[!=]|[+]|[-]|[*]|[!]
delimitation    = [;]|[.]|[,]|[=]|[(]|[)]|[{]|[}]|[\[]|[\]]


%%
/**
*LEXIC RULES:
*/
boolean           {System.out.println("Token BOOLEAN");}
class             {System.out.println("Token CLASS");}
public            {System.out.println("Token PUBLIC");}
extends           {System.out.println("Token EXTENDS");}
static            {System.out.println("Token STATIC");}
void              {System.out.println("Token VOID");}
main              {System.out.println("Token MAIN");}
String            {System.out.println("Token STRING");}
int               {System.out.println("Token INT");}
while             {System.out.println("Token WHILE");}
if                {System.out.println("Token IF");}
else              {System.out.println("Token ELSE");}
return            {System.out.println("Token RETURN");}
length            {System.out.println("Token LENGTH");}
true              {System.out.println("Token TRUE");}
false             {System.out.println("Token FALSE");}
this              {System.out.println("Token THIS");}
new               {System.out.println("Token NEW");}
System.out.println  {System.out.println("Token SYSTEM.OUT.PRINTLN");}
{identifier}      {System.out.println("Token ID ("+yytext()+")"); }
{whitespace}      { }
{integer}         {System.out.println("Token INT ("+yytext()+")");}
{comment_line}    {System.out.println("Token COMMENT_LINE ("+yytext()+")");}
{comment_ext}     {System.out.println("Token COMMENT_EXT ("+yytext()+")");}
{operators}       {System.out.println("Token OPERATOR ("+yytext()+")");}
{delimitation}    {System.out.println("Token DELIMITATION ("+yytext()+")");}
.                 { throw new RuntimeException("Caractere ilegal! '" +
                                              yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }

//User code
package com.mycompany.mavenproject1;

%%
//Opciones y definiciones regulares

%public
%class AnalizadorLexico
%char
%line
%column
%standalone

//Definicion regular
palabra = [a-zA-Z]+
identificador = [a-zA-Z][a-zA-Z0-9]*
digito = [0-9]+
espacios_blanco = [\r|\n|\r\n| |\t]

%%

//Reglas lexicas
{void} {System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
"extends" {System.out.println("Lexema:"
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
"class" {System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
"+" {System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
">" {System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
"&&" {System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
{identificador}{System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
{digito} {System.out.println("Lexema:" 
    + yytext() 
    + " columna: " 
    + yychar 
    + " fila: " 
    + yyline );}
{espacios_blanco} {/Ignorar estos simbolos/}
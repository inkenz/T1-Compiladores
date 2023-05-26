lexer grammar LA;

%Palavras Chave
Algoritmo: 'algoritmo';
Fim_algoritmo: 'fim_algoritmo';
Declare: 'declare';
Leia: 'leia';
Escreva: 'escreva';

Literal: 'literal';
Inteiro: 'inteiro';
Real: 'real';
Logico: 'logico';

IDENT: [a-zA-Z][a-zA-Z0-0]*;
CADEIA: ' " .* ";
lexer grammar LA;

//Palavras Chave
ALGORITMO: 'algoritmo';
FIM_ALGORITMO: 'fim_algoritmo';
DECLARE: 'declare';
LEIA: 'leia';
ESCREVA: 'escreva';
NAO: 'nao';
E: 'e';
OU: 'ou';
VERDADEIRO: 'verdadeiro';
FALSO: 'falso';
REGISTRO: 'registro';
FIM_REGISTRO: 'fim_registro';
PROCEDIMENTO: 'procedimento';
FIM_PROCEDIMENTO: 'fim_procedimento';
FUNCAO: 'funcao';
FIM_FUNCAO: 'fim_funcao';
VAR: 'var';
SE: 'se';
FIM_SE: 'fim_se';
SENAO: 'senao';
ENTAO: 'entao';
CASO: 'caso';
FIM_CASO: 'fim_caso';
SEJA: 'seja';
PARA: 'para';
FIM_PARA: 'fim_para';
ATE: 'ate';
FACA: 'faca';
ENQUANTO: 'enquanto';
FIM_ENQUANTO: 'fim_enquanto';
RETORNE: 'retorne';

//Tipos
TIPO: 'tipo';
CONSTANTE: 'constante';
LITERAL: 'literal';
INTEIRO: 'inteiro';
REAL: 'real';
LOGICO: 'logico';

//Operadores
SOMA: '+';
SUBTRACAO: '-';
MULTIPLICACAO: '*';
DIVISAO: '/';
PORCENTO: '%';
IGUAL: '=';
DIFERENTE: '<>';
MENORIGUAL: '<=';
MAIORIGUAL: '>=';
MENOR: '<';
MAIOR: '>';

//Simbolos
PONTO: '.';
DOISPONTOS: ':';
VIRGULA: ',';
ABREPAR: '(';
FECHAPAR: ')';
ABREBAR: '[';
FECHABAR: ']';
SEQ: '..';
SETA: '<-';
PONTEIRO: '^';
ENDERECO: '&';

//Definições
IDENT: [a-zA-Z]([a-zA-Z0-9]* | [a-zA-Z0-9]*'_'[a-zA-Z0-9]* );
NUM_INT: ('0'..'9')+;
NUM_REAL: ('0'..'9')+ '.' ('0'..'9')+;

CADEIA:
    '"' ~('"'|'\n'|'\r'|'\t')* '"';
CADEIA_NAO_FECHADA:
    '"' ~('"'|'\n'|'\r'|'\t')*;
COMENTARIO:
    '{' ~('{'|'}'|'\n'|'\r'|'\t')* '}' {skip();};
COMENTARIO_NAO_FECHADO:
    '{' ~('{'|'}'|'\n'|'\r'|'\t')*;

ERRO:
    ('$' | '~' | CADEIA'}' | '}');
WS:
    (' ' | '\t' | '\r' | '\n') {skip();};
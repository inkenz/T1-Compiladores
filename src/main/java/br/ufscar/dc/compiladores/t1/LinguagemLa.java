package br.ufscar.dc.compiladores.t1;

import java.io.IOException;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.FileWriter;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;

public class LinguagemLa 
{
    public static void main( String[] args )
    {
        try (PrintWriter pw = new PrintWriter(new FileWriter(args[1]))){
            
            //Recebendo argumentos com arquivos de entrada e saída
            CharStream cs = CharStreams.fromFileName(args[0]);

            LA lex = new LA(cs);

            Token t = null;
               
            //Montagem do vocabulário
            while ((t = lex.nextToken()).getType() != Token.EOF) {
                String nomeToken = LA.VOCABULARY.getDisplayName(t.getType());

                if(nomeToken.equals("ERRO")) {
                    pw.println("Erro na linha "+t.getLine()+": "+t.getText());
                    break;
                } else if(nomeToken.equals("CADEIA_NAO_FECHADA")) {
                    pw.println("Cadeia não fechada na linha "+t.getLine());
                    break;
                } else {
                    pw.println("<'" + t.getText() + "'," + nomeToken + ">");
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        
    }
}
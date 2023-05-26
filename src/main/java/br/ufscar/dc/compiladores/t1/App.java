package br.ufscar.dc.compiladores.t1;

import java.io.IOException;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;


public class App 
{
    public static void main( String[] args )
    {
        /*try {
            
            //Recebendo argumentos com arquivos de entrada e saída
            CharStream cs = CharStreams.fromFileName(args[0]);
            String arquivoSaida = args[1];
            LA lex = new LA(cs);

            Token t = null;

            //Montagem do vocabulário
            while ((t = lex.nextToken()).getType() != Token.EOF) {
                String nomeToken = LA.VOCABULARY.getDisplayName(t.getType());

                if(nomeToken.equals("ERRO")) {
                    System.out.println("Erro na linha "+t.getLine()+": "+t.getText());
                    break;
                } else if(nomeToken.equals("CADEIA_NAO_FECHADA")) {
                    System.out.println("Cadeia não fechada na linha "+t.getLine());
                    break;
                } else {
                    System.out.println("<" + nomeToken + "," + t.getText() + ">");
                }
            }
            
            //Escrita no arquivo de saída
            try(PrintWriter pw = new PrintWriter(arquivoSaida)) {
                pw.print("Imprimindo no arquivo, sem quebra de linha no final");
                pw.println("...Agora imprimindo com quebra de linha");
                pw.println("no final");
            } catch(FileNotFoundException fnfe) {
                System.err.println("O arquivo/diretório não existe:" + args[1]);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        */
    }
}

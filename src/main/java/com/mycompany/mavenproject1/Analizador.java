/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package com.mycompany.mavenproject1;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Scanner;
import java.util.logging.Level;
import com.mycompany.mavenproject1.AnalizadorLexico;
import java.util.logging.Logger;
/**
 *
 * @author D_PC
 */
public class Analizador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
            try {
                Reader r = new FileReader("prueba.txt");
                AnalizadorLexico scan = new AnalizadorLexico(r);
                scan.yylex();
            } catch (FileNotFoundException ex) {
                Logger.getLogger(Analizador.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(Analizador.class.getName()).log(Level.SEVERE, null, ex);
            
        }
    }
    
}

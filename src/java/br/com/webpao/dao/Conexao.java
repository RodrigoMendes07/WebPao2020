/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.webpao.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ti
 */
public class Conexao {
        
         public Connection getConnection() {

        String url = "jdbc:postgresql://localhost/BdWebPao";
        String usuario = "postgres";
        String senha = "0@123456";

        Connection con = null;

        try {

           Class.forName("org.postgresql.Driver");

            con = DriverManager.getConnection(url, usuario, senha);

            System.out.println("Conexão realizada com sucesso.");

        } catch (Exception e) {

            System.out.println("Erro Conexão " + e);

        }

        return con;
    }
    
}

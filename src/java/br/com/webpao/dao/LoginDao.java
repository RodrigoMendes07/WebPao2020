/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.webpao.dao;

import br.com.webpao.bean.LoginBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ti
 */
public class LoginDao extends Conexao {
    
     public List <LoginBean> listaUsuario  (String login, String senha) {
         
        Connection conn = this.getConnection();
        
        List <LoginBean> lista = new ArrayList();

        String sql = "select * from tbl_usuarios where email = ? and senha = ? ";

        PreparedStatement ps;

        try {

            ps = conn.prepareStatement(sql);
            ps.setString(1, login);
            ps.setString(2, senha);
            
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                
               LoginBean lBean = new LoginBean ();
                           
                lBean.setIdUsuario(rs.getInt("id_usuario"));
                lBean.setEmail(rs.getString("email"));
                lBean.setEndereco(rs.getString("endereco"));
                lBean.setNome(rs.getString("nome"));
                lBean.setSenha(rs.getString("senha"));
                lBean.setTelefone(rs.getString("telefone"));
                
                lista.add(lBean);

            }

            rs.close();
            ps.close();
            conn.close();

        } catch (Exception ex) {
            System.out.println("Erro ao Listar Usuario" + ex);
        }
        return lista;
    }            
    
}

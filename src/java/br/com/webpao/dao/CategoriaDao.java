/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.webpao.dao;

import br.com.webpao.bean.CategoriaBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ti
 */

public class CategoriaDao extends Conexao {
    
     public List <CategoriaBean> listaCategoria () {
         
        Connection conn = this.getConnection();
        
        List <CategoriaBean> lista = new ArrayList();

        String sql = "select * from tbl_categorias order by descricao ";

        PreparedStatement ps;

        try {

            ps = conn.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                
                CategoriaBean ctBean = new CategoriaBean ();
                           
                ctBean.setIdCategoria(rs.getInt("id_categoria"));
                ctBean.setDescricao(rs.getString("descricao"));
                
                lista.add(ctBean);

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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.webpao.dao;

import br.com.webpao.bean.CategoriaBean;
import br.com.webpao.bean.ProdutoBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ti
 */
public class ProdutoDao extends Conexao {
    
    public List <ProdutoBean> listaProduto(int idProduto) {
         
        Connection conn = this.getConnection();
        
        List <ProdutoBean> lista = new ArrayList();

        String sql = "select * from tbl_produtos where id_categoria = ?";

        PreparedStatement ps;

        try {

            ps = conn.prepareStatement(sql);
            ps.setInt(1,idProduto);
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                            
                ProdutoBean pBean = new ProdutoBean ();
                CategoriaBean cBean = new CategoriaBean();
                
                pBean.setIdProduto(rs.getInt("id_produto"));
                pBean.setNome(rs.getString("nome_produto"));
                pBean.setDescricao(rs.getString("descricao_produto"));
                pBean.setValor(rs.getDouble("valor_produto"));
                pBean.setImagem(rs.getString("img_produto"));
                cBean.setIdCategoria(rs.getInt("id_categoria"));
                pBean.setCatBean(cBean);
                lista.add(pBean);
      
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

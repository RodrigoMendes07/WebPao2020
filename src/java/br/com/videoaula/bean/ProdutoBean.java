/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.videoaula.bean;

/**
 *
 * @author Ti
 */
public class ProdutoBean {

    private int idProduto;
    private CategoriaBean catBean;
    private String descricao;
    private double valor;
    private String imagem;

    public ProdutoBean() {
    }

    public ProdutoBean(int idProduto, CategoriaBean catBean, String descricao, double valor, String imagem) {
        this.idProduto = idProduto;
        this.catBean = catBean;
        this.descricao = descricao;
        this.valor = valor;
        this.imagem = imagem;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public CategoriaBean getCatBean() {
        return catBean;
    }

    public void setCatBean(CategoriaBean catBean) {
        this.catBean = catBean;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }
    
}

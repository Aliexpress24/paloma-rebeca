/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mainproduto;

/**
 *
 * @author Admin
 */
public class MainProduto {
    public static void main(String[] args) {
        Produto produto = new Produto("Notebook", 3000.0);
        ProdutoComDesconto produtoComDesconto = new ProdutoComDesconto("Smartphone", 2000.0, 10);

        produto.exibirInfo();
        produtoComDesconto.exibirInfo();
    }
}


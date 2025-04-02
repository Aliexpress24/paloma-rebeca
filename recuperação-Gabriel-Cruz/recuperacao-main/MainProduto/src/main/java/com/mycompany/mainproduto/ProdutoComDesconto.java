/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mainproduto;

/**
 *
 * @author Admin
 */
public class ProdutoComDesconto extends Produto {
    private double desconto;

    public ProdutoComDesconto(String nome, double preco, double desconto) {
        super(nome, preco);
        this.desconto = desconto;
    }

    @Override
    public void exibirInfo() {
        double precoFinal = preco - (preco * desconto / 100);
        System.out.println("Produto: " + nome + " - Preco com desconto: R$ " + precoFinal);
    }
}

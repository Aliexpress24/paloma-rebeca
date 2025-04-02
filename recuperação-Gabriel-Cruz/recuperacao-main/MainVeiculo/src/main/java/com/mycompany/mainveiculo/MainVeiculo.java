/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mainveiculo;

/**
 *
 * @author Admin
 */
public class MainVeiculo {
    public static void main(String[] args) {
        Veiculo veiculo = new Veiculo("Moto", "ABC-1234", 2020);
        Carro carro = new Carro("Sedan", "DEF-5678", 2022, 4);

        veiculo.exibirInformacoes();
        carro.exibirInformacoes();
    }
}


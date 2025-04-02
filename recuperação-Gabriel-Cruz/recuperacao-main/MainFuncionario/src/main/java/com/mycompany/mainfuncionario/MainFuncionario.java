/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mainfuncionario;

/**
 *
 * @author Admin
 */
public class MainFuncionario {
    public static void main(String[] args) {
        Funcionario funcionario = new Funcionario("Carlos", 3000.0);
        Gerente gerente = new Gerente("Mariana", 5000.0, 1000.0);

        funcionario.exibirDados();
        gerente.exibirDados();
    }
}

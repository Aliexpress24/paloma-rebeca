
package com.mycompany.mainfuncionario;

/**
 *
 * @author Admin
 */
public class Funcionario {
    protected String nome;
    protected double salario;

    public Funcionario(String nome, double salario) {
        this.nome = nome;
        this.salario = salario;
    }

    public void exibirDados() {
        System.out.println("Funcionario: " + nome + ", Salario: R$ " + salario);
    }
}

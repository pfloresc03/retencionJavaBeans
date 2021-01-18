/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author DAW-A
 */
public class Retencion {
    private float salario, retencion, salarioNeto;

    public Retencion() {
    }

    public float getSalario() {
        return salario;
    }

    public float getRetencion() {
        return retencion;
    }

    public float getSalarioNeto() {
        return salarioNeto;
    }

    public void setSalario(float salario) {
        this.salario = salario;
        if ((this.salario>1000) && (this.salario<=3000)){
            this.retencion = 10;
        } else if ((this.salario>3000)){
            this.retencion = 20;
        } else {
            this.retencion = 0;
        }
        this.salarioNeto = this.salario - (this.salario*(this.retencion/100));
    }

    public void setRetencion(float retencion) {
        this.retencion = retencion;
    }

    public void setSalarioNeto(float salarioNeto) {
        this.salarioNeto = salarioNeto;
    }

    
    
}

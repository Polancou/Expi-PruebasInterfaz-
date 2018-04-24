package com.mycompany.nuevaexpimaven;

import javax.inject.Named;
import javax.enterprise.context.Dependent;
import org.primefaces.context.RequestContext;

/**
 *
 * @author polancou
 */
@Named(value = "Diente18")
@Dependent
public class Diente18 {
    private String nombre = "Diente18";
    private String izquierda;
    private String derecha;
    private String superior;
    private String inferior;
    
    public void Nombres(){
        String funcion = "operacion(" +"'"+getIzquierda() +"'"+ ")";
        System.out.println(funcion);
        RequestContext.getCurrentInstance().execute(funcion);
        System.out.println("Exito." + getIzquierda());
    }
    
    public void hola(String a){
        System.out.println(a);
    }
    
    public void doSomething(String componentId) {
        
        String funcion = "operacion(" +"'"+componentId +"'"+ ")";
        System.out.println(funcion);
        RequestContext.getCurrentInstance().execute(funcion);
        System.out.println("Exito." + componentId);
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
   /* public static void main(String[] args) {
        Diente18 diente = new Diente18();
        String funcion = "operacion(" + diente.getNombre() + ");";
        System.out.println(funcion);
        System.out.println("Exito " + diente.getNombre());
    }*/

    /**
     * @return the izquierda
     */
    public String getIzquierda() {
        
        return izquierda;
        
    }

    /**
     * @param izquierda the izquierda to set
     */
    public void setIzquierda(String izquierda) {
        
        this.izquierda = izquierda;
       
    }

    /**
     * @return the derecha
     */
    public String getDerecha() {
        return derecha;
    }

    /**
     * @param derecha the derecha to set
     */
    public void setDerecha(String derecha) {
        this.derecha = derecha;
    }

    /**
     * @return the superior
     */
    public String getSuperior() {
        return superior;
    }

    /**
     * @param superior the superior to set
     */
    public void setSuperior(String superior) {
        this.superior = superior;
    }

    /**
     * @return the inferior
     */
    public String getInferior() {
        return inferior;
    }

    /**
     * @param inferior the inferior to set
     */
    public void setInferior(String inferior) {
        this.inferior = inferior;
    }

}

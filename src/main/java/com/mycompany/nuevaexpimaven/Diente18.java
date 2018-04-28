package com.mycompany.nuevaexpimaven;

import javax.inject.Named;
import javax.enterprise.context.Dependent;
import javax.faces.bean.ManagedProperty;
import javax.faces.context.FacesContext;
import org.primefaces.context.RequestContext;

/**
 *
 * @author polancou
 */
@Named(value = "Diente18")
@Dependent
public class Diente18 {

    private String nombre;
    private String izquierda;
    private String derecha;
    private String superior;
    private String inferior;
    
    public void Nombres() {
        String funcion = "operacion(" + "'" + getIzquierda() + "'" + ")";
        System.out.println(funcion);
        RequestContext.getCurrentInstance().execute(funcion);
        System.out.println("Exito." + getIzquierda());
    }

    public void hola() {
        String color= FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("color"); 
        System.out.println("El color es "+ color);
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
        System.out.println("El diente es" + nombre);
    }

    /* 
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

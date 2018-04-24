/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.nuevaexpimaven;

import java.awt.event.ActionEvent;
import javax.annotation.PostConstruct;
import java.io.Serializable;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import org.primefaces.context.RequestContext;
import org.primefaces.event.ItemSelectEvent;
/**
 *
 * @author polancou
 */
public class Colores{

    /**
     * Creates a new instance of Colores
     */
    private String blanco;
    private String rojo;
    private String Espacio;
    
    public Colores() {
        
    }

    /**
     * @return the blanco
     */
    public String getBlanco() {
        return blanco;
    }

    /**
     * @param blanco the blanco to set
     */
    public void setBlanco(String blanco) {
        this.blanco = blanco;
    }

    /**
     * @return the rojo
     */
    public String getRojo() {
        return rojo;
    }

    /**
     * @param rojo the rojo to set
     */
    public void setRojo(String rojo) {
        
        this.rojo = rojo;
    }

    /**
     * @return the Espacio
     */
    public String getEspacio() {
        return Espacio;
    }

    /**
     * @param Espacio the Espacio to set
     */
    public void setEspacio(String Espacio) {
        this.Espacio = Espacio;
    }
    
     public void init() {
  }
    
    public void handleClick(ActionEvent actionEvent, String espacio) {
      RequestContext.getCurrentInstance().execute("operacion("+espacio+");");
  }

}

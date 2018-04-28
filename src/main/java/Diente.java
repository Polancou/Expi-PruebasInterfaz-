/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.inject.Named;
import javax.enterprise.context.Dependent;
import javax.faces.context.FacesContext;

/**
 *
 * @author polancou
 */
@Named(value = "diente")
@Dependent
public class Diente {
   
    
    
    public void hola() {
        String diente= FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("diente"); 
        System.out.println("El diente es "+diente);
        String posicion= FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("posicion"); 
        System.out.println("La posicion es "+posicion);
        String color= FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("color"); 
        System.out.println("El color es "+ color);
    }

    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.nuevaexpimaven;

import javax.inject.Named;
import javax.enterprise.context.Dependent;
import org.primefaces.context.RequestContext;

/**
 *
 * @author polancou
 */
@Named(value = "myManagedBean")
@Dependent
public class MyManagedBean {

  public void doSomething(String espacio) {
      String funcion = "operacion(" + espacio + ")";
      System.out.println(funcion);
      RequestContext.getCurrentInstance().execute(funcion);
    System.out.println("Exito."+espacio);
  }

}

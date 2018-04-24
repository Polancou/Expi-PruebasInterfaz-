/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.nuevaexpimaven;

import javax.annotation.PostConstruct;
import java.io.Serializable;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import org.primefaces.event.ItemSelectEvent;
 
import org.primefaces.model.chart.Axis;
import org.primefaces.model.chart.AxisType;
import org.primefaces.model.chart.BarChartModel;
import org.primefaces.model.chart.ChartSeries;
import org.primefaces.model.chart.PieChartModel;
 
 
@ManagedBean
public class BeanPrueba implements Serializable {
 
    private PieChartModel pieModel1;
 
    @PostConstruct
    public void init() {
        createPieModels();
    }
 
     
    public PieChartModel getPieModel1() {
        return pieModel1;
    }
 
     
 
    private void createPieModels() {
        createPieModel1();
    }
     
    private void createPieModel1() {
        pieModel1 = new PieChartModel();
         
        pieModel1.set("Brand 1", 497);
        pieModel1.set("Brand 2", 497);
        pieModel1.set("Brand 3", 497);
        pieModel1.set("Brand 4", 497);
         
        pieModel1.setTitle("Simple Pie");
        pieModel1.setLegendPosition("w");
    }
 
    public void itemSelect(ItemSelectEvent event) {
        FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO, "Item selected",
                        "Item Index: " + event.getItemIndex() + ", Series Index:" + event.getSeriesIndex());
         
        FacesContext.getCurrentInstance().addMessage(null, msg);
    }
}
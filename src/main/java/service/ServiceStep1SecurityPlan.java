/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import entity.Step1SecurityPlan;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jpa.exceptions.NonexistentEntityException;


/**
 *
 * @author Hachem
 */
public class ServiceStep1SecurityPlan {

    //#############################################
    public static Step1SecurityPlan create(Step1SecurityPlan t) {
        return service.FactoryJPA.getStep1SecurityPlanJpaController().create(t);
    }

    //#############################################
    public static void edit(Step1SecurityPlan t) {
        try {
            service.FactoryJPA.getStep1SecurityPlanJpaController().edit(t);
        } catch (Exception ex) {
            Logger.getLogger(ServiceStep1SecurityPlan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //#############################################
    public static void destroy(int id) {
        try {
            service.FactoryJPA.getStep1SecurityPlanJpaController().destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ServiceStep1SecurityPlan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //#############################################
    public static void destroyAll() {
        Iterator<Step1SecurityPlan> it = findAll().iterator();
        while (it.hasNext()) {
            Step1SecurityPlan obj = it.next();
            destroy(obj.getId());
        }
    }

    //#############################################
    public static Step1SecurityPlan find(int id) {
        return service.FactoryJPA.getStep1SecurityPlanJpaController().findStep1SecurityPlan(id);
    }

    //#############################################
    public static List<Step1SecurityPlan> findAll() {
        return service.FactoryJPA.getStep1SecurityPlanJpaController().findStep1SecurityPlanEntities();
    }

    //#############################################
    public static void afficher() {
        Iterator<Step1SecurityPlan> it = findAll().iterator();
        while (it.hasNext()) {
            Step1SecurityPlan obj = it.next();
            System.out.println(obj);
        }
    }

    public static void main(String[] args) {
        afficher();
    }
}

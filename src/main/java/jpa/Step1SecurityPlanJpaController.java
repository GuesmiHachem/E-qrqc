/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa;

import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import entity.Step1;
import entity.Step1SecurityPlan;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import jpa.exceptions.NonexistentEntityException;

/**
 *
 * @author Hachem
 */
public class Step1SecurityPlanJpaController implements Serializable {

    public Step1SecurityPlanJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public Step1SecurityPlan create(Step1SecurityPlan step1SecurityPlan) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Step1 idStep1 = step1SecurityPlan.getIdStep1();
            if (idStep1 != null) {
                idStep1 = em.getReference(idStep1.getClass(), idStep1.getId());
                step1SecurityPlan.setIdStep1(idStep1);
            }
            em.persist(step1SecurityPlan);
            if (idStep1 != null) {
                idStep1.getStep1SecurityPlanList().add(step1SecurityPlan);
                idStep1 = em.merge(idStep1);
            }
            em.getTransaction().commit();
            return step1SecurityPlan;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Step1SecurityPlan step1SecurityPlan) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Step1SecurityPlan persistentStep1SecurityPlan = em.find(Step1SecurityPlan.class, step1SecurityPlan.getId());
            Step1 idStep1Old = persistentStep1SecurityPlan.getIdStep1();
            Step1 idStep1New = step1SecurityPlan.getIdStep1();
            if (idStep1New != null) {
                idStep1New = em.getReference(idStep1New.getClass(), idStep1New.getId());
                step1SecurityPlan.setIdStep1(idStep1New);
            }
            step1SecurityPlan = em.merge(step1SecurityPlan);
            if (idStep1Old != null && !idStep1Old.equals(idStep1New)) {
                idStep1Old.getStep1SecurityPlanList().remove(step1SecurityPlan);
                idStep1Old = em.merge(idStep1Old);
            }
            if (idStep1New != null && !idStep1New.equals(idStep1Old)) {
                idStep1New.getStep1SecurityPlanList().add(step1SecurityPlan);
                idStep1New = em.merge(idStep1New);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = step1SecurityPlan.getId();
                if (findStep1SecurityPlan(id) == null) {
                    throw new NonexistentEntityException("The step1SecurityPlan with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Step1SecurityPlan step1SecurityPlan;
            try {
                step1SecurityPlan = em.getReference(Step1SecurityPlan.class, id);
                step1SecurityPlan.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The step1SecurityPlan with id " + id + " no longer exists.", enfe);
            }
            Step1 idStep1 = step1SecurityPlan.getIdStep1();
            if (idStep1 != null) {
                idStep1.getStep1SecurityPlanList().remove(step1SecurityPlan);
                idStep1 = em.merge(idStep1);
            }
            em.remove(step1SecurityPlan);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Step1SecurityPlan> findStep1SecurityPlanEntities() {
        return findStep1SecurityPlanEntities(true, -1, -1);
    }

    public List<Step1SecurityPlan> findStep1SecurityPlanEntities(int maxResults, int firstResult) {
        return findStep1SecurityPlanEntities(false, maxResults, firstResult);
    }

    private List<Step1SecurityPlan> findStep1SecurityPlanEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Step1SecurityPlan.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Step1SecurityPlan findStep1SecurityPlan(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Step1SecurityPlan.class, id);
        } finally {
            em.close();
        }
    }

    public int getStep1SecurityPlanCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Step1SecurityPlan> rt = cq.from(Step1SecurityPlan.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}

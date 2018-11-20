/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Hachem
 */
@Entity
@Table(name = "step1_security_plan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Step1SecurityPlan.findAll", query = "SELECT s FROM Step1SecurityPlan s")
    , @NamedQuery(name = "Step1SecurityPlan.findById", query = "SELECT s FROM Step1SecurityPlan s WHERE s.id = :id")
    , @NamedQuery(name = "Step1SecurityPlan.findByWhere", query = "SELECT s FROM Step1SecurityPlan s WHERE s.where = :where")
    , @NamedQuery(name = "Step1SecurityPlan.findByWho", query = "SELECT s FROM Step1SecurityPlan s WHERE s.who = :who")
    , @NamedQuery(name = "Step1SecurityPlan.findByHowMuch", query = "SELECT s FROM Step1SecurityPlan s WHERE s.howMuch = :howMuch")
    , @NamedQuery(name = "Step1SecurityPlan.findByResult", query = "SELECT s FROM Step1SecurityPlan s WHERE s.result = :result")})
public class Step1SecurityPlan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "where_")
    private String where;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "who_")
    private String who;
    @Basic(optional = false)
    @NotNull
    @Column(name = "how_much")
    private int howMuch;
    @Basic(optional = false)
    @NotNull
    @Column(name = "result")
    private int result;
    @JoinColumn(name = "id_step1", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Step1 idStep1;

    public Step1SecurityPlan() {
    }

    public Step1SecurityPlan(Integer id) {
        this.id = id;
    }

    public Step1SecurityPlan(Integer id, String where, String who, int howMuch, int result) {
        this.id = id;
        this.where = where;
        this.who = who;
        this.howMuch = howMuch;
        this.result = result;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWhere() {
        return where;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public String getWho() {
        return who;
    }

    public void setWho(String who) {
        this.who = who;
    }

    public int getHowMuch() {
        return howMuch;
    }

    public void setHowMuch(int howMuch) {
        this.howMuch = howMuch;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public Step1 getIdStep1() {
        return idStep1;
    }

    public void setIdStep1(Step1 idStep1) {
        this.idStep1 = idStep1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Step1SecurityPlan)) {
            return false;
        }
        Step1SecurityPlan other = (Step1SecurityPlan) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Step1SecurityPlan[ id=" + id + " ]";
    }
    
}

package Notebook.Models;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "gep")
public class Gep {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String gyarto;
    private String tipus;
    private String kijelzo;
    private Integer memoria;
    private Integer merevlemez;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGyarto() {
        return gyarto;
    }

    public void setGyarto(String gyarto) {
        this.gyarto = gyarto;
    }

    public String getTipus() {
        return tipus;
    }

    public void setTipus(String tipus) {
        this.tipus = tipus;
    }

    public String getKijelzo() {
        return kijelzo;
    }

    public void setKijelzo(String kijlezo) {
        this.kijelzo = kijlezo;
    }

    public Integer getMemoria() {
        return memoria;
    }

    public void setMemoria(Integer memoria) {
        this.memoria = memoria;
    }

    public Integer getMerevlemez() {
        return merevlemez;
    }

    public void setMerevlemez(Integer merevlemez) {
        this.merevlemez = merevlemez;
    }

    public String getVideovezerlo() {
        return videovezerlo;
    }

    public void setVideovezerlo(String videovezerlo) {
        this.videovezerlo = videovezerlo;
    }

    public BigDecimal getAr() {
        return ar;
    }

    public void setAr(BigDecimal ar) {
        this.ar = ar;
    }

    public Integer getDb() {
        return db;
    }

    public void setDb(Integer db) {
        this.db = db;
    }

    public Notebook.Models.Processzor getProcesszor() {
        return processzor;
    }

    public void setProcesszor(Notebook.Models.Processzor processzor) {
        this.processzor = processzor;
    }

    public Notebook.Models.Oprendszer getOprendszer() {
        return oprendszer;
    }

    public void setOprendszer(Notebook.Models.Oprendszer oprendszer) {
        this.oprendszer = oprendszer;
    }

    private String videovezerlo;
    private BigDecimal ar;
    private Integer db;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "processzorid", referencedColumnName = "id")
    private Processzor processzor;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "oprendszerid", referencedColumnName = "id")
    private Oprendszer oprendszer;
}

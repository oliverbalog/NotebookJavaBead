package Notebook.Models;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
public class Gep {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;
    private String Gyarto;
    private String Tipus;
    private String Kijlezo;
    private Integer Memoria;
    private Integer Merevlemez;
    private String Videovezerlo;
    private BigDecimal Ar;
    private Integer Db;

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getGyarto() {
        return Gyarto;
    }

    public void setGyarto(String gyarto) {
        Gyarto = gyarto;
    }

    public String getTipus() {
        return Tipus;
    }

    public void setTipus(String tipus) {
        Tipus = tipus;
    }

    public String getKijlezo() {
        return Kijlezo;
    }

    public void setKijlezo(String kijlezo) {
        Kijlezo = kijlezo;
    }

    public Integer getMemoria() {
        return Memoria;
    }

    public void setMemoria(Integer memoria) {
        Memoria = memoria;
    }

    public Integer getMerevlemez() {
        return Merevlemez;
    }

    public void setMerevlemez(Integer merevlemez) {
        Merevlemez = merevlemez;
    }

    public String getVideovezerlo() {
        return Videovezerlo;
    }

    public void setVideovezerlo(String videovezerlo) {
        Videovezerlo = videovezerlo;
    }

    public BigDecimal getAr() {
        return Ar;
    }

    public void setAr(BigDecimal ar) {
        Ar = ar;
    }

    public Integer getDb() {
        return Db;
    }

    public void setDb(Integer db) {
        Db = db;
    }

    public Notebook.Models.Processzor getProcesszor() {
        return Processzor;
    }

    public void setProcesszor(Notebook.Models.Processzor processzor) {
        Processzor = processzor;
    }

    public Notebook.Models.Oprendszer getOprendszer() {
        return Oprendszer;
    }

    public void setOprendszer(Notebook.Models.Oprendszer oprendszer) {
        Oprendszer = oprendszer;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "processzorid")
    private Processzor Processzor;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "oprendszerid")
    private Oprendszer Oprendszer;
}

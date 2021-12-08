package beans;

import java.io.Serializable;
import java.util.ArrayList;

public class Produtos implements Serializable {
 
    private static long serialVersionUID = 1L;
    private int id;
    private String nomep;
    private String marca;
    private double valor;

    private static ArrayList<Produtos> lista = new ArrayList<Produtos>();

    /**
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nomep
     */
    public String getNomep() {
        return nomep;
    }

    /**
     * @param nomep the nomep to set
     */
    public void setNomep(String nomep) {
        this.nomep = nomep;
    }

    /**
     * @return the marca
     */
    public String getMarca() {
        return marca;
    }

    /**
     * @param marca the marca to set
     */
    public void setMarca(String marca) {
        this.marca = marca;
    }

    /**
     * @return the valor
     */
    public double getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(double valor) {
        this.valor = valor;
    }

    /**
     * @return the lista
     */
    public static ArrayList<Produtos> getLista() {
        return lista;
    }

    /**
     * @param aLista the lista to set
     */
    public static void setLista(ArrayList<Produtos> aLista) {
        lista = aLista;
    }

 
   
  
}
  
    
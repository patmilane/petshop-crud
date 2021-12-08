package beans;

import java.io.Serializable;
import java.util.ArrayList;

public class Funcionarios implements Serializable {
 
    private static long serialVersionUID = 1L;
    private int idf;
    private String nomef;
    private String telefone;
    private String endereco;

    private static ArrayList<Funcionarios> listaf = new ArrayList<Funcionarios>();

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
     * @return the idf
     */
    public int getIdf() {
        return idf;
    }

    /**
     * @param idf the idf to set
     */
    public void setIdf(int idf) {
        this.idf = idf;
    }

    /**
     * @return the nomef
     */
    public String getNomef() {
        return nomef;
    }

    /**
     * @param nomef the nomef to set
     */
    public void setNomef(String nomef) {
        this.nomef = nomef;
    }

   
    public String getTelefone() {
        return telefone;
    }

    /**
     * @param telefone the telefone to set
     */
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

   
    public static ArrayList<Funcionarios> getLista() {
        return listaf;
    }

    /**
     */
    public static void setLista(ArrayList<Funcionarios> aListaf) {
        listaf = aListaf;
    }

    /**
     * @return the serialVersionUID
     */
   
  
}
  
    
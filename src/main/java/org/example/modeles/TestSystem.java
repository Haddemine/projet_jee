package org.example.modeles;

import javax.persistence.*;
import java.util.List;

public class TestSystem {
    private static EntityManagerFactory ENTITY_MANAGER_FACTORY= Persistence.createEntityManagerFactory("ExamenJee-Master-GestionGricole");

    public static void main(String[] args){
        addComande(1,1000,"bon");
        ENTITY_MANAGER_FACTORY.close();
    }

    public static void addComande(int id, float montant, String desc){
        EntityManager em=ENTITY_MANAGER_FACTORY.createEntityManager();
        EntityTransaction et=null;
        try{
            et=em.getTransaction();
            et.begin();
            Commande c=new Commande();
            c.setId(id);
            c.setMontant(montant);
            c.setDesc(desc);
            em.persist(c);
            et.commit();

        }
        catch (Exception ex){
            if(et!=null){
                et.rollback();

            }
            ex.printStackTrace();
        }
        finally {
            em.close();
        }
    }
    public static void getCommande(int id, float montant, String desc) {
        EntityManager em = ENTITY_MANAGER_FACTORY.createEntityManager();
        String query = "select c from Commande c where c.id =:id";
        TypedQuery<Commande> tq = em.createQuery(query, Commande.class);
        tq.setParameter("id", id);
        Commande com = null;
        try {
            com = tq.getSingleResult();
            System.out.println(com.getDesc());
        } catch (NoResultException ex) {
            ex.printStackTrace();
        } finally {
            em.close();
        }
    }
//        public static void getCommandes(int id){
//            EntityManager em=ENTITY_MANAGER_FACTORY.createEntityManager();
//            String strquery="select c from Commande c where c.id is not null";
//            TypedQuery<Commande> tq = em.createQuery(strquery, Commande.class);
//            List<Commande> coms;
//            try {
//                coms = tq.getSingleResult();
//                coms.forEach(com->System.out.println(com.getDesc()));
//        }catch (NoResultException ex) {
//                ex.printStackTrace();
//            } finally {
//                em.close();
//            }
//
//    }
}

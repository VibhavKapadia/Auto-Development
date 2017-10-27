package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ASD11VO;
public class ASD11DAO {
public void insert(ASD11VO asd11){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(asd11);
tr.commit();
}
catch(Exception e1){
}
}

public List search(){
List searchList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from ASD11VO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(ASD11VO asd11){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(asd11);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(ASD11VO asd11){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from ASD11VO where id='"+asd11.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(ASD11VO asd11){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(asd11);
tr.commit();
}
catch(Exception e1){
}
}
}
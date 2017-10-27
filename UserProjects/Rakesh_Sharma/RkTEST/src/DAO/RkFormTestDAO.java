package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.RkFormTestVO;
public class RkFormTestDAO {
public void insert(RkFormTestVO rkformtest){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(rkformtest);
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
Query query = session.createQuery("from RkFormTestVO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(RkFormTestVO rkformtest){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(rkformtest);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(RkFormTestVO rkformtest){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from RkFormTestVO where id='"+rkformtest.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(RkFormTestVO rkformtest){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(rkformtest);
tr.commit();
}
catch(Exception e1){
}
}
}
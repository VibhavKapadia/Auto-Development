package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.RegistrationVO;
public class RegistrationDAO {
public void insert(RegistrationVO registration){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(registration);
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
Query query = session.createQuery("from RegistrationVO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(RegistrationVO registration){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(registration);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(RegistrationVO registration){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from RegistrationVO where id='"+registration.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(RegistrationVO registration){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(registration);
tr.commit();
}
catch(Exception e1){
}
}
}
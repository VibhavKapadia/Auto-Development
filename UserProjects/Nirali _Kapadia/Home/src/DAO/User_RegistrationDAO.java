package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.User_RegistrationVO;
public class User_RegistrationDAO {
public void insert(User_RegistrationVO user_registration){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(user_registration);
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
Query query = session.createQuery("from User_RegistrationVO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(User_RegistrationVO user_registration){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(user_registration);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(User_RegistrationVO user_registration){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from User_RegistrationVO where id='"+user_registration.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(User_RegistrationVO user_registration){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(user_registration);
tr.commit();
}
catch(Exception e1){
}
}
}
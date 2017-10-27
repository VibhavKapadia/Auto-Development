package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.User_loginVO;
public class User_loginDAO {
public void insert(User_loginVO user_login){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(user_login);
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
Query query = session.createQuery("from User_loginVO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(User_loginVO user_login){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(user_login);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(User_loginVO user_login){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from User_loginVO where id='"+user_login.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(User_loginVO user_login){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(user_login);
tr.commit();
}
catch(Exception e1){
}
}
}
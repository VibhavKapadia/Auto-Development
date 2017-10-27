package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.Admin_loginVO;
public class Admin_loginDAO {
public void insert(Admin_loginVO admin_login){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(admin_login);
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
Query query = session.createQuery("from Admin_loginVO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(Admin_loginVO admin_login){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(admin_login);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(Admin_loginVO admin_login){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from Admin_loginVO where id='"+admin_login.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(Admin_loginVO admin_login){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(admin_login);
tr.commit();
}
catch(Exception e1){
}
}
}
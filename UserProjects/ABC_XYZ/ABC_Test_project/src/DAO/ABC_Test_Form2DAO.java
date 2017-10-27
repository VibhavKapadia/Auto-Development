package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ABC_Test_Form2VO;
public class ABC_Test_Form2DAO {
public void insert(ABC_Test_Form2VO abc_test_form2){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.save(abc_test_form2);
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
Query query = session.createQuery("from ABC_Test_Form2VO");
searchList = query.list();
}
catch(Exception e1){
}return searchList;
}
public void delete(ABC_Test_Form2VO abc_test_form2){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.delete(abc_test_form2);
tr.commit();
}
catch(Exception e1){
}
}

public List edit(ABC_Test_Form2VO abc_test_form2){
List editList = new ArrayList();
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Query query = session.createQuery("from ABC_Test_Form2VO where id='"+abc_test_form2.getId()+"'");
 editList = query.list();
}
catch(Exception e1){
}return editList;
}
public void update(ABC_Test_Form2VO abc_test_form2){
try{
 SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
Session session =sessionFactory.openSession();
Transaction tr = session.beginTransaction();
session.saveOrUpdate(abc_test_form2);
tr.commit();
}
catch(Exception e1){
}
}
}
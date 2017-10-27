package com.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {

@Autowired
SessionFactory sessionFactory;

public void insert(Object object){
	
	Session session = sessionFactory.openSession();
	Transaction tr = session.beginTransaction();
	session.save(object);
	tr.commit();
	session.close();
}

}

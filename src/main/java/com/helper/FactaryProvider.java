package com.helper;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactaryProvider {
    public static SessionFactory factory;
    public static SessionFactory getFactory() {
    	if(factory==null) {
    		factory=new Configuration().configure("hibernet.cfg.xml").buildSessionFactory();
    	}
    	
    	return factory;
    }
    public void closeFactory() {
    	if(factory.isOpen()) {
    		factory.close();
    	}
    }
}

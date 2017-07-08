package com.niit.config;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateUtil {
	private static SessionFactory sessionFactory;
	static{
		Configuration cfg = new Configuration().configure();
		ServiceRegistryBuilder srb = new ServiceRegistryBuilder();
		srb.applySettings(cfg.getProperties());
		ServiceRegistry service = srb.buildServiceRegistry();
		sessionFactory= cfg.buildSessionFactory(service);
		
		
	}
	public static SessionFactory getSessionFactory(){
		return sessionFactory;
	}
}

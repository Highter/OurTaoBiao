package com.common;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
	
	//ָ��Ҫ��ȡ�����ļ�·��
	private static String CONFIG_FILE_LOCATTON = "/hibernate.cfg.xml";
	//ʵ����ThreadLocal��
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	//ʵ����Configuration��
	private static Configuration configuration = new Configuration();
	//����SessionFactory�ӿ�
	private static SessionFactory sessionFactory;
	//����configFIle���Բ���ֵ
	private static String configFile = CONFIG_FILE_LOCATTON;
	
	static{
		try {
			//��ȡ�����ļ�hibernate.cfg.xml
			configuration.configure(configFile);
			//ʵ����SessionFactory
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error.............");
		}
		
	}
	
	


	private HibernateSessionFactory() {};
	
	//��ȡSession
	public static Session getSession() throws HibernateException{
		Session session = (Session)threadLocal.get();
		//�ж��Ƿ��Ѿ�����Session����
		if(session == null || !session.isOpen()){
			//���SessionFactory����Ϊnull.�򴴽�SessionFactory
			if(sessionFactory == null){
				rebuidSessionFactory();
			}
			//�ж�SessionFactory�����Ƿ�Ϊnull��������ǣ����Session
			session = (sessionFactory != null) ? sessionFactory.openSession() : null;
			threadLocal.set(session);
		}
		return session;
	}

	//����SessionFactory
	private static void rebuidSessionFactory() {
		// TODO Auto-generated method stub
		try {
			configuration.configure(configFile);
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//�ر�Session
	public static void closeSession() throws HibernateException{
		Session session = (Session)threadLocal.get();
		threadLocal.set(null);
		if(session != null){
			session.close();
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static void setConfigFile(String configFile) {
		HibernateSessionFactory.configFile = configFile;
		sessionFactory = null;
	}

	public static Configuration getConfiguration() {
		return configuration;
	}


}

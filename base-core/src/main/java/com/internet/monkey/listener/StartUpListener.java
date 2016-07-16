package com.internet.monkey.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Created by pzw on 1/28/2016.
 */
public class StartUpListener implements ServletContextListener {

    private Logger logger = LoggerFactory.getLogger(StartUpListener.class);


    public void contextInitialized(ServletContextEvent servletContextEvent) {
        logger.info("------" + servletContextEvent.getServletContext().getContextPath() + " framework init()------");
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        logger.info("------" + servletContextEvent.getServletContext().getContextPath() + " framework destroy()------");
    }
}

/*

 */
package me.shafin.testmessenger.config;

import javax.servlet.ServletRegistration;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


/**
 *
 * @author SHAFIN
 */
public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

   @Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class<?>[] { WebSecurityConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] { WebConfig.class, WebSocketConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected void customizeRegistration(ServletRegistration.Dynamic registration) {
		registration.setInitParameter("dispatchOptionsRequest", "true");
	}
    
}

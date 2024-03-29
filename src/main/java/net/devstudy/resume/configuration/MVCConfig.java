package net.devstudy.resume.configuration;

import java.util.List;

import org.hibernate.validator.HibernateValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import net.devstudy.resume.filter.ResumeFilter;

@Configuration
@EnableWebMvc
@EnableSpringDataWebSupport
@ComponentScan({ "net.devstudy.resume.controller" })
public class MVCConfig extends WebMvcConfigurerAdapter {

	@Autowired
	private ResumeFilter resumeFilter;

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/JSP/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Override
	public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> exceptionResolvers) {
		exceptionResolvers.add(resumeFilter);
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
		registry.addResourceHandler("/media/**").addResourceLocations("/media/");
		registry.addResourceHandler("/favicon.ico").addResourceLocations("/favicon.ico");
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		return multipartResolver;
	}

	@Bean
	public LocalValidatorFactoryBean localValidatorFactoryBean() {
		LocalValidatorFactoryBean localValidatorFactoryBean = new LocalValidatorFactoryBean();
		localValidatorFactoryBean.setProviderClass(HibernateValidator.class);
		localValidatorFactoryBean.setValidationMessageSource(messageSource());
		return localValidatorFactoryBean;
	}

	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasename("i18n.messages");
		messageSource.setDefaultEncoding("UTF-8");
		return messageSource;
	}
}
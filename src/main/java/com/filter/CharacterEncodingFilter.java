package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter{

   @Override
   public void destroy() {

   }

   @Override
   public void init(FilterConfig filterConfig) throws ServletException {
      this.encoding = filterConfig.getInitParameter("encoding");
   }

   private String encoding = "UTF-8";
   
   @Override
   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
         throws IOException, ServletException {
      
      
      System.out.println("> CharacterEncodingFilter.doFilter()...");
      request.setCharacterEncoding(encoding);
      
      chain.doFilter(request, response);
   }

}
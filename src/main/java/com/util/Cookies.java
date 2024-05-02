package com.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {   
   
   //          키:쿠키이름   값:쿠키객체
   public Map<String, Cookie> cookieMap = new HashMap<>();
   
   // 디폴트 생성자
   public Cookies( HttpServletRequest request ) {
      Cookie []  cookies = request.getCookies();
      if( cookies != null ) {
         for (Cookie c : cookies) {
            String cname =  c.getName();
            cookieMap.put(cname, c);
         } // for
      } // if
   }
   
   public Cookie getCookie( String cname ) {
      return this.cookieMap.get(cname);
   }
   
   public boolean exists( String cname ) { // 쿠키 이름은 있는데 쿠키 값이 없을 수도 있음. 
      return this.cookieMap.get(cname)  != null ;  // true, false
   }
   
   public static Cookie createCookie(String cname, String cvalue) throws UnsupportedEncodingException {
      Cookie c = new Cookie( cname, URLEncoder.encode(cvalue, "UTF-8"));
      return c;
   }
   
   public static Cookie createCookie(String cname, String cvalue, String path, int expiry) throws UnsupportedEncodingException {
      Cookie c = new Cookie( cname, URLEncoder.encode(cvalue, "UTF-8"));
      c.setPath(path);
      c.setMaxAge(expiry);
      return c;
   }
   
   public static Cookie createCookie(String cname, String cvalue, String domain, String path, int expiry) throws UnsupportedEncodingException {
      Cookie c = new Cookie( cname, URLEncoder.encode(cvalue, "UTF-8"));
      c.setDomain(domain);
      c.setPath(path);
      c.setMaxAge(expiry);
      return c;
   }
   
   public String getValue( String cname) throws UnsupportedEncodingException {
      String cvalue = null; 
      Cookie c =  this.cookieMap.get(cname);
      if( c != null ) {
          cvalue = URLDecoder.decode(c.getValue(), "UTF-8");
      } 
      return cvalue;
   }

}






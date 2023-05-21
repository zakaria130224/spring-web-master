//package com.xyz.bd.webmaster.Security;
//
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.web.filter.OncePerRequestFilter;
//import org.springframework.web.util.ContentCachingRequestWrapper;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.net.URLDecoder;
//import java.net.URLEncoder;
//import java.util.List;
//import java.util.Map;
//
//public class CentralRequestFilter extends OncePerRequestFilter {
//
//    final Logger logger = LoggerFactory.getLogger(this.getClass().getName());
//
//    private AuditRepository auditDao = BeanUtil.getBean(AuditRepository.class);
//
//    @Override
//    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
//
//        try {
//            System.out.println("Request Uri: " + request.getRequestURI());
//            MenuModelItemRedis modelItemRedis = null;
//            if (!ConstantGlobal.isInDevelopment) {
//                try {
//                    if (request.getRequestURI() != null && isSessionValid(request) && !request.getRequestURI().contains("/assets/")) {
//                        modelItemRedis = getMenuItem(request);
//                        if (!response.isCommitted() && modelItemRedis == null) {
//                            APP_LOGGER app_logger = preparedAuditItem(request, modelItemRedis);
//                            if (app_logger != null) {
//                                app_logger.setUNAUTHORIZED_ACCESS(1);
//                                saveAuditItem(app_logger);
//                            }
//                            String redirectURL = request.getContextPath() + "/accessDenied";
//                            response.sendRedirect(redirectURL);
//                            return;
//                        }
//                    }
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//
//            filterChain.doFilter(request, response);
//            APP_LOGGER app_logger = preparedAuditItem(request, modelItemRedis);
//            if (app_logger != null) {
//                app_logger.setUNAUTHORIZED_ACCESS(0);
//                saveAuditItem(app_logger);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            filterChain.doFilter(request, response);
//        }
//    }
//
//
//    private APP_LOGGER preparedAuditItem(HttpServletRequest request, MenuModelItemRedis modelItemRedis) {
//        if (request != null && request.getRequestURI() != null && (!request.getRequestURI().contains("/assets/"))) {
//            try {
//                APP_LOGGER app_logger = new APP_LOGGER();
//                app_logger.setUSER_ID(SessionManager.getUserID(request));
//                app_logger.setUSER_LOGIN_NAME(SessionManager.getUserLoginName(request));
//                if (request.getHeader("X-FORWARDED-FOR") == null || request.getHeader("X-FORWARDED-FOR").isEmpty()) {
//                    app_logger.setIP(request.getRemoteAddr());
//                } else {
//                    app_logger.setIP(request.getHeader("X-FORWARDED-FOR"));
//                }
//                app_logger.setACCESS_DATETIME(System.currentTimeMillis());
//                app_logger.setREQ_URI(getRequestUri(request.getRequestURI()));
//                if (modelItemRedis != null)
//                    app_logger.setMENU_NAME(modelItemRedis.getNAME());
//                app_logger.setSERVER_IP(request.getLocalAddr());
//
//                String requestBody = "";
//                try {
//                    HttpServletRequest requestCacheWrapperObject
//                            = new ContentCachingRequestWrapper(request);
//                    requestBody = mapToString(requestCacheWrapperObject.getParameterMap());
//                    if (requestBody.isEmpty())
//                        requestBody = request.getQueryString();
//                    if (requestBody != null && !requestBody.isEmpty())
//                        requestBody = URLDecoder.decode(requestBody, "UTF-8");
//
//                    if (requestBody != null && requestBody.length() > 4000) {
//                        requestBody = requestBody.substring(0, 3999);
//                    }
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//                app_logger.setQUERY_STR(requestBody);
//
//                /*if (requestBody != null && !requestBody.isEmpty()) {
//                    try {
//                        if (requestBody.toUpperCase().contains("MSISDN")) {
//                            app_logger.setMSISDN(getParsedData(requestBody, "MSISDN"));
//                        }
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                        logger.error(e.getMessage(), e);
//                    }
//
//                    try {
//                        if (requestBody.toUpperCase().contains("SRNUM")) {
//                            app_logger.setSR_NUM(getParsedData(requestBody, "SRNUM"));
//                        } else if (requestBody.toUpperCase().contains("SRNUMBER")) {
//                            app_logger.setSR_NUM(getParsedData(requestBody, "SRNUMBER"));
//                        }
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                        logger.error(e.getMessage(), e);
//                    }
//                }*/
//
//                app_logger.setSESSION_ID(request.getRequestedSessionId());
//                app_logger.setUSER_AGENT(request.getHeader("User-Agent"));
//                return app_logger;
//            } catch (Exception e) {
//                e.printStackTrace();
//                logger.error("Audit log request writing exception");
//                logger.error(e.getMessage(), e);
//                return null;
//            }
//        }
//        return null;
//    }
//
//    private String getParsedData(String body, String key) {
//        String value = "";
//        try {
//            String[] params = body.split("&");
//            for (String param : params) {
//                String[] parts = param.split("=");
//                if (parts[0].equalsIgnoreCase(key))
//                    return parts[1];
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            logger.error(e.getMessage(), e);
//        }
//        return value;
//    }
//
//    void saveAuditItem(APP_LOGGER app_logger) {
//        try {
//            auditDao.insertLog(app_logger);
//        } catch (Exception e) {
//            e.printStackTrace();
//            logger.error("Audit log request writing exception");
//            logger.error(e.getMessage(), e);
//        }
//    }
//
//    private MenuModelItemRedis getMenuItem(HttpServletRequest request) {
//        try {
//            String requestURI = getRequestUri(request.getRequestURI());
//            long userId = SessionManager.getUserID(request);
//            if (userId < 0)
//                return null;
//
//            List<MenuModelItemRedis> menuModelItemRedis = SessionManager.getPermittedMenuList(request);
//            if (menuModelItemRedis.isEmpty())
//                return null;
//            else {
//                for (MenuModelItemRedis m : menuModelItemRedis) {
//                    if (m.getMENU_URL().equalsIgnoreCase(requestURI)) {
//                        return m;
//                    }
//                }
//                return null;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    private String getRequestUri(String uri) {
//        String requestURI = uri;
//        if (requestURI.startsWith("/") && requestURI.length() > 1)
//            requestURI = requestURI.substring(1);
//
//        if (requestURI.startsWith("rp-dcrm/") && requestURI.length() > 8) {
//            requestURI = requestURI.substring(8);
//        } else if (requestURI.startsWith("rp-dcrm/")) {
//            requestURI = requestURI.substring(7);
//        }
//
//        return requestURI;
//    }
//
//    private String mapToString(Map<String, String[]> map) {
//        StringBuilder stringBuilder = new StringBuilder();
//
//        for (String key : map.keySet()) {
//            if (stringBuilder.length() > 0) {
//                stringBuilder.append("&");
//            }
//            String[] value = map.get(key);
//            try {
//                stringBuilder.append((key != null ? URLEncoder.encode(key, "UTF-8") : ""));
//                stringBuilder.append("=");
//                stringBuilder.append(value != null ? URLEncoder.encode(getStringArrayToString(value), "UTF-8") : "");
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        return stringBuilder.toString();
//    }
//
//    private String getStringArrayToString(String[] strings) {
//        StringBuilder builder = new StringBuilder();
//        for (String s : strings) {
//            if (s.trim().length() > 0)
//                builder.append(s.trim());
//        }
//        return builder.toString();
//    }
//
//    public boolean isSessionValid(HttpServletRequest request) {
//        try {
//            return request.getSession().getAttribute(SessionConstants.IS_LOGGED_IN_LOMS.name()) != null &&
//                    ((Boolean) request.getSession().getAttribute(SessionConstants.IS_LOGGED_IN_LOMS.name()));
//        } catch (Exception e) {
//            e.printStackTrace();
//            logger.error(e.getMessage(), e);
//        }
//        return false;
//    }
//}

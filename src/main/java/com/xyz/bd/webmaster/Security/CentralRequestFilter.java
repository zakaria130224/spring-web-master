package com.xyz.bd.webmaster.Security;


import com.xyz.bd.webmaster.AppLogger.Service.AuditLoggerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.util.ContentCachingRequestWrapper;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Component
public class CentralRequestFilter extends OncePerRequestFilter {

    final Logger logger = LoggerFactory.getLogger(this.getClass().getName());

    @Autowired
    private AuditLoggerService auditLoggerService;


    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        try {
            //MDC Configuration
            String uuid = UUID.randomUUID().toString();
            MDC.put("loggerId", uuid);

            logger.info("Request Uri: " + request.getRequestURI());
//            MenuModelItemRedis modelItemRedis = null;
//            if (!ConstantGlobal.isInDevelopment) {
//                try {
//                    if (request.getRequestURI() != null && isSessionValid(request) && !request.getRequestURI().contains("/assets/")) {
//                        modelItemRedis = getMenuItem(request);
//                        if (!response.isCommitted() && modelItemRedis == null) {
//                            APP_LOGGER app_logger = auditLoggerService.preparedAuditItem(request, modelItemRedis);
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
            auditLoggerService.preparedAuditItem(request, uuid);
            filterChain.doFilter(request, response);
//            APP_LOGGER app_logger = preparedAuditItem(request, modelItemRedis);
//            if (app_logger != null) {
//                app_logger.setUNAUTHORIZED_ACCESS(0);
//                saveAuditItem(app_logger);
//            }

        } catch (Exception e) {
            //e.printStackTrace();
            filterChain.doFilter(request, response);
        }
    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request)
            throws ServletException {
        String path = request.getRequestURI();
        return request.getRequestURI().contains("/assets/") || request.getRequestURI().contains("favicon");
    }

}

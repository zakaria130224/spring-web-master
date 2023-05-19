package com.xyz.bd.webmaster.Services.UserManagement;


import com.xyz.bd.webmaster.Models.UserManagement.DTOs.DTOResetPassword;
import com.xyz.bd.webmaster.Models.UserManagement.Entities.AppUser;
import com.xyz.bd.webmaster.Models.UserManagement.Entities.AppUserPasswordHistory;
import com.xyz.bd.webmaster.Models.UserManagement.Entities.Menu;
import com.xyz.bd.webmaster.Models.common.ResponseModel.Response;
import com.xyz.bd.webmaster.Repositories.UserManagement.*;
import com.xyz.bd.webmaster.Repositories.specifier.CustomSpecifier;
import com.xyz.bd.webmaster.Utility.Constant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.datatables.mapping.DataTablesInput;
import org.springframework.data.jpa.datatables.mapping.DataTablesOutput;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.Date;
import java.util.List;

@Service
public class MenuService {
    private Logger logger = LoggerFactory.getLogger(MenuService.class);

    @Autowired
    private MenuRepository menuRepository;
    @Autowired
    private MenuDTRepository menuDTRepository;

    public DataTablesOutput<Menu> DTData(@Valid DataTablesInput input, HttpServletRequest request) {
        DataTablesOutput<Menu> output = new DataTablesOutput<>();
        try {
//            output = menuDTRepository.findAll(input, new CustomSpecifier<Menu>().textInAllColumns(input.getSearch().getValue()));
            output = menuDTRepository.findAll(input);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error(e.getMessage(), e);
        }
        return output;
    }
}

package com.xyz.bd.webmaster.user;



import com.xyz.bd.webmaster.Utility.Constant;
import com.xyz.bd.webmaster.models.common.ResponseModel.Response;
import com.xyz.bd.webmaster.models.user.DTOs.DTOResetPassword;
import com.xyz.bd.webmaster.models.user.Entities.AppUser;
import com.xyz.bd.webmaster.models.user.Entities.AppUserPasswordHistory;
import com.xyz.bd.webmaster.repositories.user.AppUserPassHistoryRepository;
import com.xyz.bd.webmaster.repositories.user.AppUserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AppUserService {
    private Logger logger= LoggerFactory.getLogger(AppUserService.class);

    @Autowired
    private AppUserRepository appUserRepository;

    @Autowired
    private PasswordSecurity passwordSecurity;

    @Autowired
    private AppUserPassHistoryRepository appUserPassHistoryRepository;

    public AppUser getUserByName(String name)
    {
        return appUserRepository.findFirstByLoginName(name);
    }

    public AppUser getUserByNameAndPass(String name, String password)
    {
        return appUserRepository.findFirstByLoginNameAndPassword(name,password);
    }

    public Response resetPassword(DTOResetPassword req){
        try {
            if (req!=null) {
                //check user

                AppUser appUser=appUserRepository.findFirstByLoginName(req.getUserName());

                if (appUser!=null)
                {
                    //Current Pass hash
                    String curPassHash=passwordSecurity.encrypt(req.getOldPassword());
                    // checking current password
                    if (req.getOldPassword().isEmpty()) {
                        return new Response(Constant.generalFailed,"Current Password is required.");
                    } else if (req.getNewPassword().isEmpty()) {
                        return new Response(Constant.generalFailed,"New Password is required.");
//                    } else if ($confirm_password == '') {
//                        $this->error_message = 'Confirm Password is required.';
//                        return false;
                    } else if (!curPassHash.equals(appUser.getPassword())) {
                        return new Response(Constant.generalFailed,"Current Password does not match.");
//                    } else if ($new_password != $confirm_password) {
//                        $this->error_message = 'New Password and Confirm Password does not match.';
//                        return false;
                    } else if (req.getNewPassword().length()<14) {
                        return new Response(Constant.generalFailed,"Password must have at least 14 (fourteen) characters.");
                    } else if (isNewPassRepeated(req.getCurrentUserName(), req.getNewPassword())) {
                        return new Response(Constant.generalFailed,"You can not use same password that you used previously.");
                    }else {
                        if (!req.getNewPassword().matches("^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*[!@#$&*]).{14,20}$")){
                            return new Response(Constant.generalFailed,"Please input valid password as per policy");
                        }

                        if (req.getResetType().equals(Constant.resetTypeForce))
                        {
                            appUser.setNew(true);
                            appUser.setLock(false);
                        }
                        else
                            appUser.setNew(false);

                        // add password history
                        AppUserPasswordHistory userPasswordHistory=AppUserPasswordHistory.builder()
                                .userId(appUser.getId())
                                .userName(appUser.getLoginName())
                                .userPassword(passwordSecurity.encrypt(req.getNewPassword()))
                                .changeType(req.getResetType())
                                .changeReason(req.getResetType())
                                .oldPassword(appUser.getPassword())
                                .updatedBy(req.getCurrentUserName())
                                .build();
                        appUserPassHistoryRepository.save(userPasswordHistory);

                        appUser.setPassword(passwordSecurity.encrypt(req.getNewPassword()));
                        appUser.setLastPassCngTime(new Date());
                        appUser.setLock(false);
                        appUser.setUpdatedAt(new Date());

                        appUserRepository.save(appUser);


                        return new Response(Constant.generalSuccess);

                    }

                }else {
                    return new Response(Constant.generalFailed,"User not found!");
                }
            }
            else
                return new Response(Constant.generalFailed,null);
        }catch (Exception ex){
            logger.error(ex.getMessage());
            return new Response(Constant.generalFailed, ex.getMessage());
        }
    }

    private boolean isNewPassRepeated(String usrName, String newPass)
    {
        List<AppUserPasswordHistory> passwordHistory=appUserPassHistoryRepository
                .getTop4ByUserNameOrderByCreatedAtDesc(usrName);

        AppUserPasswordHistory userPasswordHistory=passwordHistory.stream()
                .filter(x->x.getUserPassword().equals(passwordSecurity.encrypt(newPass)))
                .findAny()
                .orElse(null);

        return userPasswordHistory!=null;
    }
}

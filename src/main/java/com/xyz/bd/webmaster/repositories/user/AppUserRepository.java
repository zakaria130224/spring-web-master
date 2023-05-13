package com.xyz.bd.webmaster.repositories.user;


import com.xyz.bd.webmaster.models.user.Entities.AppUser;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AppUserRepository extends CrudRepository<AppUser, Long> {
    AppUser findFirstById(long id);
    AppUser findFirstByLoginName(String loginName);
    AppUser findFirstByLoginNameAndPassword(String loginName, String password);
    AppUser findFirstByLoginNameAndPasswordAndActiveIsTrue(String loginName, String password);
    AppUser findFirstByLoginNameOrEmail(String loginName, String email);

//    @Query("SELECT NEW com.robi.bd.dscms.AppUser.Model.DTOs.DTOUserView(id, name, loginName , email, userGroupName, active, isLock) from AppUser")
//    List<DTOUserView> findallDTOUser();

//    @Query("SELECT new com.robi.bd.dscmschatbot.Model.DTOs.ChatBotUser.DTOChatBotUser(msisdn,applicationName,active,isLock) from ChatBotUser where msisdn=:msisdn")
//    DTOChatBotUser findFirstDTOChatBotUserByMsisdn(@Param("msisdn") String msisdn);
}
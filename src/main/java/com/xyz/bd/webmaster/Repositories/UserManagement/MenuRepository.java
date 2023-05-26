package com.xyz.bd.webmaster.Repositories.UserManagement;

import com.xyz.bd.webmaster.Models.UserManagement.Entities.Menu;
import com.xyz.bd.webmaster.Models.UserManagement.Entities.Responsibility;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface MenuRepository extends JpaRepository<Menu, Long> {
    List<Menu> findAllByActiveTrue();

    Menu findFirstById(Long id);

    @Query(value = "select m.*\n" +
            "FROM   md_responsibility_menu_map   mp\n" +
            "LEFT JOIN   md_menu   m ON mp.MENU_ID = m.ID\n" +
            "where mp.RESPONSIBILITY_ID in(Select MD_USER_RESPONSIBILITY_MAP.RESPONSIBILITY_ID from MD_USER_RESPONSIBILITY_MAP where USER_ID=?1)\n" +
            "order by PRIORITY asc\n", nativeQuery = true)
    List<Menu> findAllByUserId(Long usrId);
}

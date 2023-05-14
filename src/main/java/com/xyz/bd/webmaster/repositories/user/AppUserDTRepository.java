package com.xyz.bd.webmaster.repositories.user;


import com.xyz.bd.webmaster.models.user.Entities.AppUser;
import org.springframework.data.jpa.datatables.mapping.DataTablesInput;
import org.springframework.data.jpa.datatables.mapping.DataTablesOutput;
import org.springframework.data.jpa.datatables.repository.DataTablesRepository;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AppUserDTRepository extends DataTablesRepository<AppUser, Long> {


    DataTablesOutput<AppUser> findAll(DataTablesInput input, Specification<AppUser> spec);

}
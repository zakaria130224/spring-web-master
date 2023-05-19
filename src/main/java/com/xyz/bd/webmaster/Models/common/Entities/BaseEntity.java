package com.xyz.bd.webmaster.Models.common.Entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Data
@MappedSuperclass
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class BaseEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreationTimestamp
    @Column(name = "CREATED_AT")
    private Date createdAt;

    @Column(name = "UPDATED_AT")
    private Date updatedAt;

    @Column(name = "CREATED_BY")
    private String createdBy;

    @Column(name = "UPDATED_BY")
    private String updatedBy;


}

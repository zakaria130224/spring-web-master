package com.xyz.bd.webmaster.models.common.Entities;

import com.fasterxml.jackson.annotation.JsonProperty;
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
    @JsonProperty("Id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;

    @CreationTimestamp
    @Column(name ="CREATED_AT")
    @JsonProperty("CreatedAt")
    private Date createdAt;

    @Column(name ="UPDATED_AT")
    @JsonProperty("UpdatedAt")
    private Date updatedAt;

    @Column(name = "CREATED_BY")
    @JsonProperty("CreatedBy")
    private String createdBy;

    @Column(name = "UPDATED_BY")
    @JsonProperty("UpdatedBy")
    private String updatedBy;


}

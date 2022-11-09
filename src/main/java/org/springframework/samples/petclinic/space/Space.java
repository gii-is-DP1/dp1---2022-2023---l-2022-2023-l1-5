package org.springframework.samples.petclinic.space;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

import org.springframework.samples.petclinic.model.BaseEntity;

@Entity
public class Space extends BaseEntity{

    @NotNull
    private Integer numBlackBacteria;

    @NotNull
    private Integer numRedBacteria;

    @NotNull
    private Integer numBlackSarcinas;

    @NotNull
    private Integer numRedSarcinas;


}
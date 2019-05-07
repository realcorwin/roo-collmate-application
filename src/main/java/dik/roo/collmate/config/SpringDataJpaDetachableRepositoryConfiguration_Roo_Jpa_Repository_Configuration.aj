// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dik.roo.collmate.config;

import dik.roo.collmate.CollmateApplication;
import dik.roo.collmate.config.SpringDataJpaDetachableRepositoryConfiguration;
import io.springlets.data.jpa.repository.support.DetachableJpaRepositoryImpl;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

privileged aspect SpringDataJpaDetachableRepositoryConfiguration_Roo_Jpa_Repository_Configuration {
    
    declare @type: SpringDataJpaDetachableRepositoryConfiguration: @Configuration;
    
    declare @type: SpringDataJpaDetachableRepositoryConfiguration: @EnableJpaRepositories(repositoryBaseClass = DetachableJpaRepositoryImpl.class, basePackageClasses = CollmateApplication.class);
    
}

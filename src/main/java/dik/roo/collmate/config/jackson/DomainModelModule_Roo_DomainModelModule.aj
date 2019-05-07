// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dik.roo.collmate.config.jackson;

import com.fasterxml.jackson.databind.module.SimpleModule;
import dik.roo.collmate.config.jackson.DomainModelModule;
import dik.roo.collmate.domain.Cd;
import dik.roo.collmate.domain.Dvd;
import dik.roo.collmate.web.CdJsonMixin;
import dik.roo.collmate.web.DvdJsonMixin;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Cd.class, CdJsonMixin.class);
        setMixInAnnotation(Dvd.class, DvdJsonMixin.class);
    }

}
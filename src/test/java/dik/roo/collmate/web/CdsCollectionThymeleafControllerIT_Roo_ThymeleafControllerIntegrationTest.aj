// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dik.roo.collmate.web;

import dik.roo.collmate.domain.dod.CdFactory;
import dik.roo.collmate.service.api.CdService;
import dik.roo.collmate.web.CdsCollectionThymeleafController;
import dik.roo.collmate.web.CdsCollectionThymeleafControllerIT;
import io.springlets.boot.test.autoconfigure.web.servlet.SpringletsWebMvcTest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

privileged aspect CdsCollectionThymeleafControllerIT_Roo_ThymeleafControllerIntegrationTest {
    
    declare @type: CdsCollectionThymeleafControllerIT: @RunWith(SpringRunner.class);
    
    declare @type: CdsCollectionThymeleafControllerIT: @SpringletsWebMvcTest(controllers = CdsCollectionThymeleafController.class, secure = false);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    public MockMvc CdsCollectionThymeleafControllerIT.mvc;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @MockBean
    public CdService CdsCollectionThymeleafControllerIT.cdServiceService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public CdFactory CdsCollectionThymeleafControllerIT.factory = new CdFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MockMvc
     */
    public MockMvc CdsCollectionThymeleafControllerIT.getMvc() {
        return mvc;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CdService
     */
    public CdService CdsCollectionThymeleafControllerIT.getCdServiceService() {
        return cdServiceService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CdFactory
     */
    public CdFactory CdsCollectionThymeleafControllerIT.getFactory() {
        return factory;
    }
    
    /**
     * Test method example. To be implemented by developer.
     * 
     */
    @Test
    public void CdsCollectionThymeleafControllerIT.testMethodExample() {
        // Setup
        // Previous tasks
        
        // Exercise
        // Execute method to test
        
        // Verify
        // Check results with assertions
    }
    
}

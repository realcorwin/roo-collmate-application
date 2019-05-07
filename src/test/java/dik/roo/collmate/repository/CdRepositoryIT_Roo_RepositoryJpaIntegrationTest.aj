// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dik.roo.collmate.repository;

import static org.assertj.core.api.Assertions.assertThat;

import dik.roo.collmate.config.SpringDataJpaDetachableRepositoryConfiguration;
import dik.roo.collmate.dod.DataOnDemandConfiguration;
import dik.roo.collmate.domain.Cd;
import dik.roo.collmate.domain.dod.CdDataOnDemand;
import dik.roo.collmate.repository.CdRepository;
import dik.roo.collmate.repository.CdRepositoryIT;
import io.springlets.data.domain.GlobalSearch;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

privileged aspect CdRepositoryIT_Roo_RepositoryJpaIntegrationTest {
    
    declare @type: CdRepositoryIT: @RunWith(SpringRunner.class);
    
    declare @type: CdRepositoryIT: @DataJpaTest;
    
    declare @type: CdRepositoryIT: @Import({ DataOnDemandConfiguration.class, SpringDataJpaDetachableRepositoryConfiguration.class });
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Rule
    public ExpectedException CdRepositoryIT.thrown = ExpectedException.none();
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private CdRepository CdRepositoryIT.repository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private CdDataOnDemand CdRepositoryIT.dod;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CdRepository
     */
    public CdRepository CdRepositoryIT.getRepository() {
        return repository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CdDataOnDemand
     */
    public CdDataOnDemand CdRepositoryIT.getDod() {
        return dod;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Before
    public void CdRepositoryIT.checkDataOnDemandHasInitializedCorrectly() {
        assertThat(getDod().getRandomCd())
            .as("Check data on demand for 'Cd' initializes correctly by getting a random Cd")
            .isNotNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.countShouldReturnExpectedValue() {
        // Verify
        assertThat(getRepository().count()).as("Check there are available 'Cd' entries").isGreaterThan(0);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.findOneShouldReturnExistingCd() {
        // Setup
        Long id = getRandomCdId();
        
        // Exercise
        Cd cd = getRepository().findOne(id);
        
        // Verify
        assertThat(cd).as("Check that findOne illegally returned null for id %s", id).isNotNull();
        assertThat(id).as("Check the identifier of the found 'Cd' is the same used to look for it")
            .isEqualTo(cd.getId());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.findAllShouldReturnAllCds() {
        // Setup
        assertThat(getRepository().count())
            .as("Check the number of entries is not too big (250 entries). "
                + "If it is, please review the tests so it doesn't take too long to run them")
            .isLessThan(250);
        
        // Exercise
        List<Cd> result = getRepository().findAll();
        
        // Verify
        assertThat(result).as("Check 'findAll' returns a not null list of entries").isNotNull();
        assertThat(result.size()).as("Check 'findAll' returns a not empty list of entries")
            .isGreaterThan(0);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.persistShouldGenerateIdValue() {
        // Setup
        // Exercise
        Cd cd = getDod().getNewRandomTransientCd();
        
        // Verify
        assertThat(cd).as("Check the Data on demand generated a new non null 'Cd'").isNotNull();
        assertThat(cd.getId()).as("Check the Data on demand generated a new 'Cd' whose id is null")
            .isNull();
        try {
            cd = getRepository().saveAndFlush(cd);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter
                .hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".")
                    .append(cv.getPropertyPath()).append(": ").append(cv.getMessage())
                    .append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        assertThat(cd.getId()).as("Check a 'Cd' (%s) id is not null after been persisted", cd)
            .isNotNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.deleteShouldMakeCdUnavailable() {
        // Setup
        Long id = getRandomCdId();
        Cd cd = getRepository().findOne(id);
        
        // Exercise
        getRepository().delete(cd);
        
        // Verify
        assertThat(getRepository().findOne(id))
        .as("Check the deleted 'Cd' %s is no longer available with 'findOne'", cd).isNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.findAllCustomNotFilteredNotPagedShouldReturnAllCds() {
        // Exercise
        Page<Cd> all = getRepository().findAll((GlobalSearch) null, new PageRequest(0, getDod().getSize()));
        
        // Verify
        assertThat(all.getNumberOfElements())
            .as("Check 'findAll' with null 'GlobalSearch' and no pagination returns all entries")
            .isEqualTo(getDod().getSize());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CdRepositoryIT.findAllCustomNotFilteredPagedShouldReturnACdsPage() {
        // Exercise
        Page<Cd> all = getRepository().findAll((GlobalSearch) null, new PageRequest(0, 3));
        
        // Verify
        assertThat(all.getNumberOfElements())
            .as("Check result number is not greater than the page size").isLessThanOrEqualTo(3);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    private Long CdRepositoryIT.getRandomCdId() {
        Cd cd = getDod().getRandomCd();
        Long id = cd.getId();
        assertThat(id).as("Check the Data on demand generated a 'Cd' with an identifier").isNotNull();
        return id;
    }
    
}
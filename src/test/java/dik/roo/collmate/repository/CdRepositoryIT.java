package dik.roo.collmate.repository;
import dik.roo.collmate.dod.DataOnDemandConfiguration;
import dik.roo.collmate.domain.dod.CdDataOnDemand;
import org.springframework.roo.addon.layers.repository.jpa.annotations.test.RooRepositoryJpaIntegrationTest;

/**
 * = CdRepositoryIT
 TODO Auto-generated class documentation
 *
 */
@RooRepositoryJpaIntegrationTest(targetClass = CdRepository.class, dodConfigurationClass = DataOnDemandConfiguration.class, dodClass = CdDataOnDemand.class)
public class CdRepositoryIT {
}

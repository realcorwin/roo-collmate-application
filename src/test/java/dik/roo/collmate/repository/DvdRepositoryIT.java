package dik.roo.collmate.repository;
import dik.roo.collmate.dod.DataOnDemandConfiguration;
import dik.roo.collmate.domain.dod.DvdDataOnDemand;
import org.springframework.roo.addon.layers.repository.jpa.annotations.test.RooRepositoryJpaIntegrationTest;

/**
 * = DvdRepositoryIT
 TODO Auto-generated class documentation
 *
 */
@RooRepositoryJpaIntegrationTest(targetClass = DvdRepository.class, dodConfigurationClass = DataOnDemandConfiguration.class, dodClass = DvdDataOnDemand.class)
public class DvdRepositoryIT {
}

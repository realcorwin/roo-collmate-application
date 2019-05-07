package dik.roo.collmate.service.api;
import dik.roo.collmate.domain.Cd;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = CdService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Cd.class)
public interface CdService extends EntityResolver<Cd, Long>, ValidatorService<Cd> {
}

package dik.roo.collmate.service.api;
import dik.roo.collmate.domain.Dvd;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = DvdService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Dvd.class)
public interface DvdService extends EntityResolver<Dvd, Long>, ValidatorService<Dvd> {
}

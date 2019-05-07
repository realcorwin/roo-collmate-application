package dik.roo.collmate.web;
import dik.roo.collmate.domain.Cd;
import dik.roo.collmate.service.api.CdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = CdDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Cd.class)
public class CdDeserializer extends JsonObjectDeserializer<Cd> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private CdService cdService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param cdService
     * @param conversionService
     */
    @Autowired
    public CdDeserializer(@Lazy CdService cdService, ConversionService conversionService) {
        this.cdService = cdService;
        this.conversionService = conversionService;
    }
}

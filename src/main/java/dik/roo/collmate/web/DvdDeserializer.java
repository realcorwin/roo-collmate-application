package dik.roo.collmate.web;
import dik.roo.collmate.domain.Dvd;
import dik.roo.collmate.service.api.DvdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = DvdDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Dvd.class)
public class DvdDeserializer extends JsonObjectDeserializer<Dvd> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private DvdService dvdService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param dvdService
     * @param conversionService
     */
    @Autowired
    public DvdDeserializer(@Lazy DvdService dvdService, ConversionService conversionService) {
        this.dvdService = dvdService;
        this.conversionService = conversionService;
    }
}

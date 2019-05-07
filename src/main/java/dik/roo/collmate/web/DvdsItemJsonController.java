package dik.roo.collmate.web;
import dik.roo.collmate.domain.Dvd;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = DvdsItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Dvd.class, pathPrefix = "/rest", type = ControllerType.ITEM)
@RooJSON
public class DvdsItemJsonController {
}

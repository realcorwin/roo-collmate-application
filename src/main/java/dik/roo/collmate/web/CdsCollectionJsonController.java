package dik.roo.collmate.web;
import dik.roo.collmate.domain.Cd;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CdsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cd.class, pathPrefix = "/rest", type = ControllerType.COLLECTION)
@RooJSON
public class CdsCollectionJsonController {
}

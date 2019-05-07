package dik.roo.collmate.web;
import dik.roo.collmate.domain.Dvd;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = DvdsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Dvd.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class DvdsCollectionThymeleafController {
}

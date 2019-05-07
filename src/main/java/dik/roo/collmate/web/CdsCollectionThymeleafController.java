package dik.roo.collmate.web;
import dik.roo.collmate.domain.Cd;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CdsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cd.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class CdsCollectionThymeleafController {
}

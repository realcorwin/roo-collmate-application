package dik.roo.collmate.web;
import dik.roo.collmate.domain.Cd;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CdsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cd.class, type = ControllerType.ITEM)
@RooThymeleaf
public class CdsItemThymeleafController implements ConcurrencyManager<Cd> {
}

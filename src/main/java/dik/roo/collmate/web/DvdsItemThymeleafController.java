package dik.roo.collmate.web;
import dik.roo.collmate.domain.Dvd;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = DvdsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Dvd.class, type = ControllerType.ITEM)
@RooThymeleaf
public class DvdsItemThymeleafController implements ConcurrencyManager<Dvd> {
}

package dik.roo.collmate.repository;
import dik.roo.collmate.domain.Dvd;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = DvdRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Dvd.class)
public interface DvdRepository extends DetachableJpaRepository<Dvd, Long>, DvdRepositoryCustom {
}

package dik.roo.collmate.repository;
import dik.roo.collmate.domain.Cd;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = CdRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Cd.class)
public interface CdRepository extends DetachableJpaRepository<Cd, Long>, CdRepositoryCustom {
}

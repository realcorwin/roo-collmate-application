package dik.roo.collmate.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import dik.roo.collmate.domain.Dvd;

/**
 * = DvdRepositoryImpl
 *
 * Implementation of DvdRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = DvdRepositoryCustom.class)
public class DvdRepositoryImpl extends QueryDslRepositorySupportExt<Dvd> implements DvdRepositoryCustom{

    /**
     * Default constructor
     */
    DvdRepositoryImpl() {
        super(Dvd.class);
    }
}
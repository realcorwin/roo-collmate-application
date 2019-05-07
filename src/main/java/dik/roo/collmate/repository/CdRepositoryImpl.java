package dik.roo.collmate.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import dik.roo.collmate.domain.Cd;

/**
 * = CdRepositoryImpl
 *
 * Implementation of CdRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = CdRepositoryCustom.class)
public class CdRepositoryImpl extends QueryDslRepositorySupportExt<Cd> implements CdRepositoryCustom{

    /**
     * Default constructor
     */
    CdRepositoryImpl() {
        super(Cd.class);
    }
}
package dik.roo.collmate.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import dik.roo.collmate.domain.reference.Status;
import javax.persistence.Enumerated;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * = Cd
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Cd {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @SequenceGenerator(name = "cdGen", sequenceName = "CD_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "cdGen")
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    private String name;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String performer;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String releaseYear;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String diskCount;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String medium;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String label;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated
    private Status status;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar added;
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dik.roo.collmate.domain.dod;

import dik.roo.collmate.domain.Dvd;
import dik.roo.collmate.domain.dod.DvdFactory;
import dik.roo.collmate.domain.reference.Status;
import java.util.Calendar;
import java.util.GregorianCalendar;

privileged aspect DvdFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link Dvd} with the given index.
     * 
     * @param index position of the Dvd
     * @return a new transient Dvd
     */
    public Dvd DvdFactory.create(int index) {
        Dvd obj = new Dvd();
        setAdded(obj, index);
        setDiskCount(obj, index);
        setFormat(obj, index);
        setLang(obj, index);
        setName(obj, index);
        setReleaseYear(obj, index);
        setStatus(obj, index);
        return obj;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setAdded(Dvd obj, int index) {
        Calendar added = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), 
			Calendar.getInstance().get(Calendar.MONTH), 
			Calendar.getInstance().get(Calendar.DAY_OF_MONTH) - 1);
        obj.setAdded(added);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setDiskCount(Dvd obj, int index) {
        String diskCount = "diskCount_" + index;
        obj.setDiskCount(diskCount);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setFormat(Dvd obj, int index) {
        String format = "format_" + index;
        obj.setFormat(format);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setLang(Dvd obj, int index) {
        String lang = "lang_" + index;
        obj.setLang(lang);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setName(Dvd obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setReleaseYear(Dvd obj, int index) {
        String releaseYear = "releaseYear_" + index;
        obj.setReleaseYear(releaseYear);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void DvdFactory.setStatus(Dvd obj, int index) {
        Status status = Status.class.getEnumConstants()[0];
        obj.setStatus(status);
    }
    
}

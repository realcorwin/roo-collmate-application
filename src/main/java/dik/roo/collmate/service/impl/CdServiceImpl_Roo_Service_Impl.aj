// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dik.roo.collmate.service.impl;

import dik.roo.collmate.domain.Cd;
import dik.roo.collmate.repository.CdRepository;
import dik.roo.collmate.service.impl.CdServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CdServiceImpl_Roo_Service_Impl {
    
    declare @type: CdServiceImpl: @Service;
    
    declare @type: CdServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CdRepository CdServiceImpl.cdRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param cdRepository
     */
    @Autowired
    public CdServiceImpl.new(CdRepository cdRepository) {
        setCdRepository(cdRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CdRepository
     */
    public CdRepository CdServiceImpl.getCdRepository() {
        return cdRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cdRepository
     */
    public void CdServiceImpl.setCdRepository(CdRepository cdRepository) {
        this.cdRepository = cdRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cd
     * @return Map
     */
    public Map<String, List<MessageI18n>> CdServiceImpl.validate(Cd cd) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cd
     */
    @Transactional
    public void CdServiceImpl.delete(Cd cd) {
        getCdRepository().delete(cd);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Cd> CdServiceImpl.save(Iterable<Cd> entities) {
        return getCdRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CdServiceImpl.delete(Iterable<Long> ids) {
        List<Cd> toDelete = getCdRepository().findAll(ids);
        getCdRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Cd
     */
    @Transactional
    public Cd CdServiceImpl.save(Cd entity) {
        return getCdRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cd
     */
    public Cd CdServiceImpl.findOne(Long id) {
        return getCdRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cd
     */
    public Cd CdServiceImpl.findOneForUpdate(Long id) {
        return getCdRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Cd> CdServiceImpl.findAll(Iterable<Long> ids) {
        return getCdRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Cd> CdServiceImpl.findAll() {
        return getCdRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CdServiceImpl.count() {
        return getCdRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cd> CdServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCdRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cd> CdServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getCdRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Cd> CdServiceImpl.getEntityType() {
        return Cd.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CdServiceImpl.getIdType() {
        return Long.class;
    }
    
}
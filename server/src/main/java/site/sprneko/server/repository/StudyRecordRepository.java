package site.sprneko.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import site.sprneko.server.entity.StudyRecord;


public interface StudyRecordRepository extends JpaRepository<StudyRecord, Long> {
    
}

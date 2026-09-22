package site.sprneko.server.controller;

import org.springframework.web.bind.annotation.*;

import site.sprneko.server.entity.StudyRecord;
import site.sprneko.server.repository.StudyRecordRepository;

import java.time.LocalDateTime;
import java.util.Map;

@CrossOrigin
@RestController
public class StudyController {
    private final StudyRecordRepository repository;

    public StudyController(StudyRecordRepository repository) {
        this.repository = repository;
    }

    @GetMapping("/api/study")
    public Map<String, Object> study() {
        return Map.of(
                "title", "学习 SpringBoot",
                "done", false);
    }

    /*@PostMapping("/api/study")
    public String receiveStudy(
    @RequestBody StudyRequest study
    ){
    System.out.println(study.getTitle());
    System.out.println(study.isDone());

    if (study.getTitle() == null) {
    return "请填写标题";
    } else {
    return "收到学习记录";
    }
    }
    */

    @PostMapping("/api/study")
    public Map<String, Object> saveStudy(
            @RequestBody StudyRecord record) {
        
        if (record.getTitle() == null || record.getTitle().isEmpty()) {
            return Map.of(
                    "success", false,
                    "message", "学习内容不能为空");
        }

        record.setCreateTime(LocalDateTime.now());
        repository.save(record);

        return Map.of(
                "success", true,
                "message", "学习记录成功");
    }


    @GetMapping("/api/attendance")
    public Map<String, Object> attendance() {
        return Map.of(
                "date", "2026-09-21",
                "present", true);
    }

}

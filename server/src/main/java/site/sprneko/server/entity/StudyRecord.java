package site.sprneko.server.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "study_record")
public class StudyRecord {
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private boolean done;
    private LocalDateTime createTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public StudyRecord(Long id, String title, boolean done, LocalDateTime createTime) {
        this.id = id;
        this.title = title;
        this.done = done;
        this.createTime = createTime;
    }

    public StudyRecord() {
    }
}

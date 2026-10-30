package site.sprneko.server.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
@Entity
@Table(name = "word")

public class Word {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String word;
    private List<Tanslation> translation;
    private int count;
    private int status;
    private LocalDateTime firstSeen;
    private LocalDateTime lastSeen;
}

package site.sprneko.server.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "input")
public class Input {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String originalWord;
    private String normalizedWord;
    private int count;
    private LocalDateTime firstSeen;
    private LocalDateTime lastSeen;
}

package site.sprneko.server.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "input")
public class Input {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String originalWord;
    private String normalizedWord;
    private int count;
    private int status;
    private LocalDateTime firstSeen = LocalDateTime.now();
    private LocalDateTime lastSeen = LocalDateTime.now();
}

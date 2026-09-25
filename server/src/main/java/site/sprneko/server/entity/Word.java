package site.sprneko.server.entity;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "word")
public class Word {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String originalWord;
    private String normalizedWord;
    private int count;
    private LocalDateTime firstSeen;
    private LocalDateTime lastSeen;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOriginalWord() {
        return originalWord;
    }

    public void setOriginalWord(String originalWord) {
        this.originalWord = originalWord;
    }

    public String getNormalizedWord() {
        return normalizedWord;
    }

    public void setNormalizedWord(String normalizedWord) {
        this.normalizedWord = normalizedWord;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public LocalDateTime getFirstSeen() {
        return firstSeen;
    }

    public void setFirstSeen(LocalDateTime firstSeen) {
        this.firstSeen = firstSeen;
    }

    public LocalDateTime getLastSeen() {
        return lastSeen;
    }

    public void setLastSeen(LocalDateTime lastSeen) {
        this.lastSeen = lastSeen;
    }

    public Word() {
    }

    public Word(Long id, String originalWord, String nomalizedWord, int count, LocalDateTime firstSeen, LocalDateTime lastSeen) {
        this.id = id;
        this.originalWord = originalWord;
        this.normalizedWord = nomalizedWord;
        this.count = count;
        this.firstSeen = firstSeen;
        this.lastSeen = lastSeen;
    }
}

package site.sprneko.server.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "input_word")
public class InputWord {
    @Id
    @ManyToOne
    @JoinColumn(name = "input_id")
    private Input input;
    @ManyToOne
    @JoinColumn(name = "word_id")
    private Word word;
    @Id
    private int position;
}

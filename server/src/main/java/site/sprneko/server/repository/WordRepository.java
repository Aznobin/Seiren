package site.sprneko.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import site.sprneko.server.entity.Word;

import java.util.Optional;

public interface WordRepository extends JpaRepository<Word, Long> {

    Optional<Word> findByOriginalWord(String originalWord);
}

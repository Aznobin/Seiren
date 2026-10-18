package site.sprneko.server.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import site.sprneko.server.entity.Input;

import java.util.Optional;

public interface InputRepository extends JpaRepository<Input, Long> {

    Optional<Input> findByOriginalWord(String originalWord);
}

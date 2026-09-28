package site.sprneko.server.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import site.sprneko.server.dto.WordResponse;
import site.sprneko.server.entity.Word;
import site.sprneko.server.repository.WordRepository;

import java.time.LocalDateTime;
import java.util.Optional;

@Slf4j
@Service
public class WordService {
    private final WordRepository wordRepository;
    public WordService(WordRepository wordRepository) {
        this.wordRepository = wordRepository;
    }

    public String normalizeWord(String originalWord) {
        String temp = originalWord.replaceAll("([a-z0-9])([A-Z])", "$1 $2");
        temp = temp.replaceAll("([A-Z]+)([A-Z][a-z])", "$1 $2");
        temp = temp.replaceAll("[-_~()]+", " ");
        temp = temp.replaceAll(" +", " ");

//        log.info("Splitting camel case for word: {}", originalWord);
//        这行日志啰嗦了，每次记录单词时都会打印，无论是否成功

        return temp.trim().toLowerCase();
    }

    public WordResponse recordWord(String originalWord) {
        Optional<Word> result = wordRepository.findByOriginalWord(originalWord);
        if (result.isPresent()) {

            Word word = result.get();
            word.setCount(word.getCount() + 1);
            word.setLastSeen(LocalDateTime.now());

            log.info("Updating word: {}", originalWord);

            wordRepository.save(word);

            return new WordResponse(word.getNormalizedWord(), word.getCount());

        } else {

            Word word = new Word();

            String normalizedWord = normalizeWord(originalWord);
            word.setNormalizedWord(normalizedWord);

            word.setOriginalWord(originalWord);
            word.setCount(1);
            word.setFirstSeen(LocalDateTime.now());
            word.setLastSeen(LocalDateTime.now());

            log.info("Create new word: {}", originalWord);

            wordRepository.save(word);

            return new WordResponse(word.getNormalizedWord(), word.getCount());
        }

    }

}

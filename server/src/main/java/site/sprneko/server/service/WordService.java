package site.sprneko.server.service;

import org.springframework.stereotype.Service;
import site.sprneko.server.entity.Word;
import site.sprneko.server.repository.WordRepository;

import java.time.LocalDateTime;
import java.util.Optional;

@Service
public class WordService {
    private final WordRepository wordRepository;
    public WordService(WordRepository wordRepository) {
        this.wordRepository = wordRepository;
    }

    public String normalizeWord(String originalWord) {
        String temp = originalWord.replaceAll("([a-z0-9])([A-Z])", "$1 $2");
        return temp.replaceAll("([A-Z]+)([A-Z][a-z])", "$1 $2");
    }

    public Word recordWord(String originalWord) {
        Optional<Word> result = wordRepository.findByOriginalWord(originalWord);
        if (result.isPresent()) {

            Word wordResult = result.get();
            wordResult.setCount(wordResult.getCount() + 1);
            wordResult.setLastSeen(LocalDateTime.now());

            return wordRepository.save(wordResult);

        } else {

            Word word = new Word();

            String normalizedWord = normalizeWord(originalWord);
            word.setNormalizedWord(normalizedWord);

            word.setOriginalWord(originalWord);
            word.setCount(1);
            word.setFirstSeen(LocalDateTime.now());
            word.setLastSeen(LocalDateTime.now());

            return wordRepository.save(word);
        }

    }

}

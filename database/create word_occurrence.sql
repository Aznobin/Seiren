CREATE TABLE word_occurrence (
  input_id BIGINT NOT NULL,
  word_id BIGINT NOT NULL,
  position int NOT NULL DEFAULT 0,
  PRIMARY KEY (`input_id`, `position`),
  INDEX `idx_word_occurrence_word_id` (`word_id`),
  CONSTRAINT `fk_word_occurrence_in` FOREIGN KEY (`input_id`) REFERENCES `input` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_word_occurrence_out` FOREIGN KEY (`word_id`) REFERENCES `word` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
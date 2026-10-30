-- 一次性迁移：把链接表 input_word 改名为 word_occurrence，约束名与索引名同步改掉
-- 2026-10-30 已在云端 seiren 库执行并通过验证（表当时 0 行，不影响数据）
-- 执行顺序：先换外键名，再改表名，最后改索引名

ALTER TABLE `input_word`
  DROP FOREIGN KEY `fk_input_word_in`,
  DROP FOREIGN KEY `fk_input_word_out`;

ALTER TABLE `input_word`
  ADD CONSTRAINT `fk_word_occurrence_in` FOREIGN KEY (`input_id`) REFERENCES `input` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_word_occurrence_out` FOREIGN KEY (`word_id`) REFERENCES `word` (`id`) ON DELETE RESTRICT;

RENAME TABLE `input_word` TO `word_occurrence`;

ALTER TABLE `word_occurrence`
  RENAME INDEX `idx_input_word_word_id` TO `idx_word_occurrence_word_id`;

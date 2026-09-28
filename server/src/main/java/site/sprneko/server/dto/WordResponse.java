package site.sprneko.server.dto;

public class WordResponse {
    private String normalizedWord;
    private Integer count;

    public WordResponse() {
    }

    public WordResponse(String normalizedWord, Integer count) {
        this.normalizedWord = normalizedWord;
        this.count = count;
    }

    public String getNormalizedWord() {
        return normalizedWord;
    }

    public void setNormalizedWord(String normalizedWord) {
        this.normalizedWord = normalizedWord;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String toString() {
        return "WordResponse{normalizedWord = " + normalizedWord + ", count = " + count + "}";
    }
}

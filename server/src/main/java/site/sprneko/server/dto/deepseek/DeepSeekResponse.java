package site.sprneko.server.dto.deepseek;

import lombok.Data;
import lombok.Getter;

import java.util.List;

@Getter
@Data
public class DeepSeekResponse {
    private List<Choice> choices;

    @Getter
    public static class Choice {
        private Message message;
    }
    @Getter
    public static class Message {
        private String content;
    }
}

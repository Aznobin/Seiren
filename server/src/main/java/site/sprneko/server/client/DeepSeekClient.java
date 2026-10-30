package site.sprneko.server.client;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;
import site.sprneko.server.config.DeepSeekProperties;
import site.sprneko.server.dto.deepseek.DeepSeekRequest;
import site.sprneko.server.dto.deepseek.DeepSeekResponse;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Component
public class DeepSeekClient {
    private final RestClient restClient = RestClient.create();

    private final DeepSeekProperties deepSeekProperties;

    public DeepSeekClient(DeepSeekProperties properties) {
        this.deepSeekProperties = properties;
    }

    public String translateWord(String word) {
        DeepSeekRequest request = new DeepSeekRequest();

        request.setModel(deepSeekProperties.getModel());

        List<DeepSeekRequest.Message> messages = new ArrayList<>();
        messages.add(new DeepSeekRequest.Message("system", "你是一个英汉词典，只输出最常用的一个中文释义，不要词性、解释"));
        messages.add(new DeepSeekRequest.Message("user", "apple"));
        messages.add(new DeepSeekRequest.Message("assistant", "苹果"));
        messages.add(new DeepSeekRequest.Message("user", "flies"));
        messages.add(new DeepSeekRequest.Message("assistant", "苍蝇"));

        messages.add(new DeepSeekRequest.Message("user", word));
        request.setMessages(messages);

        log.info("request: {}", request);
        DeepSeekResponse resp = restClient.post()
                .uri(deepSeekProperties.getBaseUrl())
                .header("Authorization", "Bearer " + deepSeekProperties.getApiKey())
                .header("Content-Type", "application/json")
                .body(request)
                .retrieve()
                .body(DeepSeekResponse.class);
        log.info("response: {}", resp);
        assert resp != null;

        return resp.getChoices().get(0).getMessage().getContent();

    }

    public String translateText(String text) {
        DeepSeekRequest request = new DeepSeekRequest();
        request.setModel(deepSeekProperties.getModel());
        List<DeepSeekRequest.Message> messages = new ArrayList<>();
        messages.add(new DeepSeekRequest.Message("system",
                "你是英文词典兼拼写检查器。判断用户给的词或短语拼写是否正确。"
                        + "只输出 JSON，不要 markdown 代码块，不要多余文字：\n"
                        + "拼写正确：{\"correct\":true,\"translation\":\"中文释义\"}\n"
                        + "拼写错误：{\"correct\":false,\"suggestion\":\"正确拼写\",\"translation\":\"正确拼写的中文释义\"}"));

        messages.add(new DeepSeekRequest.Message("user", "recieve"));
        messages.add(new DeepSeekRequest.Message("assistant", "{\"correct\":false,\"suggestion\":\"receive\",\"translation\":\"收到\"}"));

        messages.add(new DeepSeekRequest.Message("user", text));

        request.setMessages(messages);
        log.info("request: {}", request);
        DeepSeekResponse resp = restClient.post()
                .uri(deepSeekProperties.getBaseUrl())
                .header("Authorization", "Bearer " + deepSeekProperties.getApiKey())
                .header("Content-Type", "application/json")
                .body(request)
                .retrieve()
                .body(DeepSeekResponse.class);
        log.info("response: {}", resp);
        assert resp != null;
        return resp.getChoices().get(0).getMessage().getContent();
    }

}

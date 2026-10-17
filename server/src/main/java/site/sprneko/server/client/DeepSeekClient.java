package site.sprneko.server.client;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;
import site.sprneko.server.config.DeepSeekProperties;
import site.sprneko.server.dto.deepseek.DeepSeekRequest;
import site.sprneko.server.dto.deepseek.DeepSeekResponse;

import java.util.ArrayList;
import java.util.List;

@Component
public class DeepSeekClient {
    private final RestClient restClient = RestClient.create();

    private final DeepSeekProperties deepSeekProperties;

    public DeepSeekClient(DeepSeekProperties properties) {
        this.deepSeekProperties = properties;
    }

    public void test() {
        DeepSeekRequest request = new DeepSeekRequest();

        request.setModel(deepSeekProperties.getModel());
        String url = deepSeekProperties.getBaseUrl();
        String apiKey = deepSeekProperties.getApiKey();

        String word = "button";

        List<DeepSeekRequest.Message> messages = new ArrayList<>();
        messages.add(new DeepSeekRequest.Message("system", "你是一个英汉词典，只输出最常用的一个中文释义，不要词性、解释"));
        messages.add(new DeepSeekRequest.Message("user", "apple"));
        messages.add(new DeepSeekRequest.Message("assistant", "苹果"));
        messages.add(new DeepSeekRequest.Message("user", "flies"));
        messages.add(new DeepSeekRequest.Message("assistant", word));

        request.setMessages(messages);

        System.out.println(request);
        DeepSeekResponse resp = restClient.post()
                .uri(url)
                .header("Authorization", "Bearer " + apiKey)
                .header("Content-Type", "application/json")
                .body(request)
                .retrieve()
                .body(DeepSeekResponse.class);
        System.out.println(resp);
        System.out.println(resp.getChoices().get(0).getMessage().getContent());
    }

}

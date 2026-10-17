package site.sprneko.server.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Getter
@Component // 把这个类标记为Spring组件，交给Spring管理
public class DeepSeekProperties {
    @Value("${deepseek.api-key}")
    private String apiKey;
    @Value("${deepseek.base-url}")
    private String baseUrl;
    @Value("${deepseek.model}")
    private String model;
}

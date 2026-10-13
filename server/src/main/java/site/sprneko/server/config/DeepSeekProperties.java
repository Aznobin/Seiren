package site.sprneko.server.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component // 把这个类标记为Spring组件，交给Spring管理
public class DeepSeekProperties {
    @Value("${deepseek.api-key}")
    private String apiKey;
}

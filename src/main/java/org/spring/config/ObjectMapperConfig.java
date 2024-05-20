package org.spring.config;

import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.datatype.jdk8.Jdk8Module;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;



@Configuration
public class ObjectMapperConfig{
    @Bean
    public ObjectMapper objectMapper(){
        ObjectMapper objectMapper = new ObjectMapper();

        objectMapper.registerModule(new Jdk8Module());  //jdk 8 version late
        objectMapper.registerModule(new JavaTimeModule());  //local date
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false); //知らないjson無視
        objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS,false);


        objectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);

        objectMapper.setPropertyNamingStrategy(new PropertyNamingStrategies.SnakeCaseStrategy());
        return objectMapper;
    }

}

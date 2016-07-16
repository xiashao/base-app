package com.internet.monkey.annotation;

import org.springframework.stereotype.Component;

import java.lang.annotation.*;

/**
 * Created by pzw on 2/2/2016.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
@Component
public @interface RepositoryImpl {
    String value() default "";
}

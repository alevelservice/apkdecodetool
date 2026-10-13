package com.alibaba.fastjson.annotation;

import com.alibaba.fastjson.a.e;
import com.alibaba.fastjson.c.b;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JSONField {
    String[] alternateNames() default {};

    boolean deserialize() default true;

    String format() default "";

    String name() default "";

    int ordinal() default 0;

    e[] parseFeatures() default {};

    boolean serialize() default true;

    b[] serialzeFeatures() default {};
}

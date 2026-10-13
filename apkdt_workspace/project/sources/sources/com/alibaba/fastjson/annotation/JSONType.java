package com.alibaba.fastjson.annotation;

import com.alibaba.fastjson.a.e;
import com.alibaba.fastjson.c.b;
import com.alibaba.fastjson.h;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JSONType {
    boolean alphabetic() default true;

    boolean asm() default true;

    String[] ignores() default {};

    Class<?> mappingTo() default Void.class;

    h naming() default h.CamelCase;

    String[] orders() default {};

    e[] parseFeatures() default {};

    Class<?>[] seeAlso() default {};

    b[] serialzeFeatures() default {};

    String typeKey() default "";

    String typeName() default "";
}

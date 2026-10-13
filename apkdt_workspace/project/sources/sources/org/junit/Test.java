package org.junit;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Test {

    /* loaded from: classes.dex */
    public static class a extends Throwable {
        private static final long serialVersionUID = 1;
    }

    Class<? extends Throwable> expected() default a.class;

    long timeout() default 0;
}

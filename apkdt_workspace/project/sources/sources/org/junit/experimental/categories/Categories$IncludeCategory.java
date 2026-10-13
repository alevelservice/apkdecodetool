package org.junit.experimental.categories;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Categories$IncludeCategory {
    boolean matchAny() default true;

    Class<?>[] value() default {};
}

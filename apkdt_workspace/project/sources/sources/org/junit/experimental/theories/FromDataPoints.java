package org.junit.experimental.theories;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.junit.experimental.theories.b.b;

@Target({ElementType.PARAMETER})
@ParametersSuppliedBy(b.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface FromDataPoints {
    String value();
}

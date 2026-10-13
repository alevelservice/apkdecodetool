package lombok.experimental;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.FIELD})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes.dex */
public @interface Accessors {
    boolean chain() default false;

    boolean fluent() default false;

    boolean makeFinal() default false;

    String[] prefix() default {};
}

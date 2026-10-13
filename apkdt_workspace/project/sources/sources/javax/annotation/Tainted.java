package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifierNickname;
import javax.annotation.meta.a;

@TypeQualifierNickname
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Untainted(when = a.MAYBE)
/* loaded from: classes.dex */
public @interface Tainted {
}

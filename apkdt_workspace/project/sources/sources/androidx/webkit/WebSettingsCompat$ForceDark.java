package androidx.webkit;

import androidx.annotation.RestrictTo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.SOURCE)
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public @interface WebSettingsCompat$ForceDark {
}

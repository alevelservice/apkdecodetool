package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class WebResourceErrorCompat {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface NetErrorCode {
    }

    @RestrictTo({RestrictTo.a.LIBRARY})
    public WebResourceErrorCompat() {
    }

    @NonNull
    public abstract CharSequence a();

    public abstract int b();
}

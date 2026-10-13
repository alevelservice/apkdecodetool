package e.i.b.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: Encoding.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final String f17656a;

    private b(@NonNull String str) {
        if (str != null) {
            this.f17656a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    public static b a(@NonNull String str) {
        return new b(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f17656a.equals(((b) obj).f17656a);
        }
        return false;
    }

    public int hashCode() {
        return this.f17656a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f17656a + "\"}";
    }

    public String a() {
        return this.f17656a;
    }
}

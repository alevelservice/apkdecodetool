package e.i.b.a.i;

import androidx.annotation.NonNull;
import java.util.Arrays;

/* compiled from: EncodedPayload.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private final e.i.b.a.b f17695a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f17696b;

    public g(@NonNull e.i.b.a.b bVar, @NonNull byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr != null) {
            this.f17695a = bVar;
            this.f17696b = bArr;
            return;
        }
        throw new NullPointerException("bytes is null");
    }

    public byte[] a() {
        return this.f17696b;
    }

    public e.i.b.a.b b() {
        return this.f17695a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f17695a.equals(gVar.f17695a)) {
            return Arrays.equals(this.f17696b, gVar.f17696b);
        }
        return false;
    }

    public int hashCode() {
        return ((this.f17695a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17696b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f17695a + ", bytes=[...]}";
    }
}

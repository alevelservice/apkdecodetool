package e.f.b.a;

/* compiled from: SimpleCacheKey.java */
/* loaded from: classes.dex */
public class i implements d {

    /* renamed from: a, reason: collision with root package name */
    final String f17130a;

    public i(String str) {
        com.facebook.common.internal.h.a(str);
        this.f17130a = str;
    }

    @Override // e.f.b.a.d
    public String a() {
        return this.f17130a;
    }

    @Override // e.f.b.a.d
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return this.f17130a.equals(((i) obj).f17130a);
        }
        return false;
    }

    @Override // e.f.b.a.d
    public int hashCode() {
        return this.f17130a.hashCode();
    }

    public String toString() {
        return this.f17130a;
    }
}

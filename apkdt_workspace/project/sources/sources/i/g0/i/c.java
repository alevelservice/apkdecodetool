package i.g0.i;

import i.r;

/* compiled from: Header.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: d, reason: collision with root package name */
    public static final j.f f18573d = j.f.encodeUtf8(":");

    /* renamed from: e, reason: collision with root package name */
    public static final j.f f18574e = j.f.encodeUtf8(":status");

    /* renamed from: f, reason: collision with root package name */
    public static final j.f f18575f = j.f.encodeUtf8(":method");

    /* renamed from: g, reason: collision with root package name */
    public static final j.f f18576g = j.f.encodeUtf8(":path");

    /* renamed from: h, reason: collision with root package name */
    public static final j.f f18577h = j.f.encodeUtf8(":scheme");

    /* renamed from: i, reason: collision with root package name */
    public static final j.f f18578i = j.f.encodeUtf8(":authority");

    /* renamed from: a, reason: collision with root package name */
    public final j.f f18579a;

    /* renamed from: b, reason: collision with root package name */
    public final j.f f18580b;

    /* renamed from: c, reason: collision with root package name */
    final int f18581c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Header.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(r rVar);
    }

    public c(String str, String str2) {
        this(j.f.encodeUtf8(str), j.f.encodeUtf8(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f18579a.equals(cVar.f18579a) && this.f18580b.equals(cVar.f18580b);
    }

    public int hashCode() {
        return ((527 + this.f18579a.hashCode()) * 31) + this.f18580b.hashCode();
    }

    public String toString() {
        return i.g0.c.a("%s: %s", this.f18579a.utf8(), this.f18580b.utf8());
    }

    public c(j.f fVar, String str) {
        this(fVar, j.f.encodeUtf8(str));
    }

    public c(j.f fVar, j.f fVar2) {
        this.f18579a = fVar;
        this.f18580b = fVar2;
        this.f18581c = fVar.size() + 32 + fVar2.size();
    }
}

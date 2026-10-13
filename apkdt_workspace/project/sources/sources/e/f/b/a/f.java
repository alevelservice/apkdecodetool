package e.f.b.a;

import java.util.List;

/* compiled from: MultiCacheKey.java */
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a, reason: collision with root package name */
    final List<d> f17127a;

    @Override // e.f.b.a.d
    public String a() {
        return this.f17127a.get(0).a();
    }

    public List<d> b() {
        return this.f17127a;
    }

    @Override // e.f.b.a.d
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            return this.f17127a.equals(((f) obj).f17127a);
        }
        return false;
    }

    @Override // e.f.b.a.d
    public int hashCode() {
        return this.f17127a.hashCode();
    }

    public String toString() {
        return "MultiCacheKey:" + this.f17127a.toString();
    }
}

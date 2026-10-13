package androidx.media;

import android.text.TextUtils;

/* compiled from: MediaSessionManagerImplBase.java */
/* loaded from: classes.dex */
class f implements d {

    /* renamed from: a, reason: collision with root package name */
    private String f2489a;

    /* renamed from: b, reason: collision with root package name */
    private int f2490b;

    /* renamed from: c, reason: collision with root package name */
    private int f2491c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, int i2, int i3) {
        this.f2489a = str;
        this.f2490b = i2;
        this.f2491c = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return (this.f2490b == -1 || fVar.f2490b == -1) ? TextUtils.equals(this.f2489a, fVar.f2489a) && this.f2491c == fVar.f2491c : TextUtils.equals(this.f2489a, fVar.f2489a) && this.f2490b == fVar.f2490b && this.f2491c == fVar.f2491c;
    }

    public int hashCode() {
        return a.i.m.d.a(this.f2489a, Integer.valueOf(this.f2491c));
    }
}

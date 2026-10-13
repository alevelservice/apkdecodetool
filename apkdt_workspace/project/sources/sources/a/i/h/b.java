package a.i.h;

import android.graphics.Insets;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* compiled from: Insets.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public static final b f291e = new b(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f292a;

    /* renamed from: b, reason: collision with root package name */
    public final int f293b;

    /* renamed from: c, reason: collision with root package name */
    public final int f294c;

    /* renamed from: d, reason: collision with root package name */
    public final int f295d;

    private b(int i2, int i3, int i4, int i5) {
        this.f292a = i2;
        this.f293b = i3;
        this.f294c = i4;
        this.f295d = i5;
    }

    @NonNull
    public static b a(int i2, int i3, int i4, int i5) {
        if (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            return f291e;
        }
        return new b(i2, i3, i4, i5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f295d == bVar.f295d && this.f292a == bVar.f292a && this.f294c == bVar.f294c && this.f293b == bVar.f293b;
    }

    public int hashCode() {
        return (((((this.f292a * 31) + this.f293b) * 31) + this.f294c) * 31) + this.f295d;
    }

    public String toString() {
        return "Insets{left=" + this.f292a + ", top=" + this.f293b + ", right=" + this.f294c + ", bottom=" + this.f295d + '}';
    }

    @NonNull
    @RequiresApi(api = 29)
    public Insets a() {
        return Insets.of(this.f292a, this.f293b, this.f294c, this.f295d);
    }
}

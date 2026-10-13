package e.i.b.b.c;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.k;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class a implements a.d.f {
    public static final a n;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f17825e = false;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f17826f = false;

    /* renamed from: g, reason: collision with root package name */
    private final String f17827g = null;

    /* renamed from: h, reason: collision with root package name */
    private final boolean f17828h = false;

    /* renamed from: k, reason: collision with root package name */
    private final boolean f17831k = false;

    /* renamed from: i, reason: collision with root package name */
    private final String f17829i = null;

    /* renamed from: j, reason: collision with root package name */
    private final String f17830j = null;

    /* renamed from: l, reason: collision with root package name */
    private final Long f17832l = null;
    private final Long m = null;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* renamed from: e.i.b.b.c.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0201a {
    }

    static {
        new C0201a();
        n = new a(false, false, null, false, null, null, false, null, null);
    }

    private a(boolean z, boolean z2, String str, boolean z3, String str2, String str3, boolean z4, Long l2, Long l3) {
    }

    @Nullable
    public final Long a() {
        return this.f17832l;
    }

    @Nullable
    public final String b() {
        return this.f17829i;
    }

    @Nullable
    public final String c() {
        return this.f17830j;
    }

    @Nullable
    public final Long d() {
        return this.m;
    }

    public final String e() {
        return this.f17827g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f17825e == aVar.f17825e && this.f17826f == aVar.f17826f && k.a(this.f17827g, aVar.f17827g) && this.f17828h == aVar.f17828h && this.f17831k == aVar.f17831k && k.a(this.f17829i, aVar.f17829i) && k.a(this.f17830j, aVar.f17830j) && k.a(this.f17832l, aVar.f17832l) && k.a(this.m, aVar.m);
    }

    public final boolean f() {
        return this.f17828h;
    }

    public final boolean g() {
        return this.f17826f;
    }

    public final boolean h() {
        return this.f17825e;
    }

    public final int hashCode() {
        return k.a(Boolean.valueOf(this.f17825e), Boolean.valueOf(this.f17826f), this.f17827g, Boolean.valueOf(this.f17828h), Boolean.valueOf(this.f17831k), this.f17829i, this.f17830j, this.f17832l, this.m);
    }

    public final boolean i() {
        return this.f17831k;
    }
}

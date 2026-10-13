package i.g0.g;

import i.c0;
import i.u;
import javax.annotation.Nullable;

/* compiled from: RealResponseBody.java */
/* loaded from: classes2.dex */
public final class h extends c0 {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final String f18539e;

    /* renamed from: f, reason: collision with root package name */
    private final long f18540f;

    /* renamed from: g, reason: collision with root package name */
    private final j.e f18541g;

    public h(@Nullable String str, long j2, j.e eVar) {
        this.f18539e = str;
        this.f18540f = j2;
        this.f18541g = eVar;
    }

    @Override // i.c0
    public long j() {
        return this.f18540f;
    }

    @Override // i.c0
    public u k() {
        String str = this.f18539e;
        if (str != null) {
            return u.b(str);
        }
        return null;
    }

    @Override // i.c0
    public j.e l() {
        return this.f18541g;
    }
}

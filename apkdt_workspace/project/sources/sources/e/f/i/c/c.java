package e.f.i.c;

import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.common.RotationOptions;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* compiled from: BitmapMemoryCacheKey.java */
@Immutable
/* loaded from: classes.dex */
public class c implements e.f.b.a.d {

    /* renamed from: a, reason: collision with root package name */
    private final String f17521a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.common.e f17522b;

    /* renamed from: c, reason: collision with root package name */
    private final RotationOptions f17523c;

    /* renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.common.b f17524d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final e.f.b.a.d f17525e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private final String f17526f;

    /* renamed from: g, reason: collision with root package name */
    private final int f17527g;

    public c(String str, @Nullable com.facebook.imagepipeline.common.e eVar, RotationOptions rotationOptions, com.facebook.imagepipeline.common.b bVar, @Nullable e.f.b.a.d dVar, @Nullable String str2, Object obj) {
        com.facebook.common.internal.h.a(str);
        this.f17521a = str;
        this.f17522b = eVar;
        this.f17523c = rotationOptions;
        this.f17524d = bVar;
        this.f17525e = dVar;
        this.f17526f = str2;
        Integer valueOf = Integer.valueOf(str.hashCode());
        if (eVar == null) {
            this.f17527g = e.f.c.j.b.a((Object) valueOf, (Object) 0, (Object) Integer.valueOf(rotationOptions.hashCode()), (Object) this.f17524d, (Object) this.f17525e, (Object) str2);
            RealtimeSinceBootClock.get().now();
        } else {
            eVar.hashCode();
            throw null;
        }
    }

    @Override // e.f.b.a.d
    public String a() {
        return this.f17521a;
    }

    @Override // e.f.b.a.d
    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f17527g == cVar.f17527g && this.f17521a.equals(cVar.f17521a) && com.facebook.common.internal.g.a(this.f17522b, cVar.f17522b) && com.facebook.common.internal.g.a(this.f17523c, cVar.f17523c) && com.facebook.common.internal.g.a(this.f17524d, cVar.f17524d) && com.facebook.common.internal.g.a(this.f17525e, cVar.f17525e) && com.facebook.common.internal.g.a(this.f17526f, cVar.f17526f);
    }

    @Override // e.f.b.a.d
    public int hashCode() {
        return this.f17527g;
    }

    public String toString() {
        return String.format(null, "%s_%s_%s_%s_%s_%s_%d", this.f17521a, this.f17522b, this.f17523c, this.f17524d, this.f17525e, this.f17526f, Integer.valueOf(this.f17527g));
    }
}

package e.f.i.a.a;

import android.graphics.Bitmap;
import com.facebook.common.internal.h;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: AnimatedImageResult.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private final c f17475a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private e.f.c.g.a<Bitmap> f17476b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private List<e.f.c.g.a<Bitmap>> f17477c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(f fVar) {
        c d2 = fVar.d();
        h.a(d2);
        this.f17475a = d2;
        fVar.c();
        this.f17476b = fVar.e();
        this.f17477c = fVar.b();
    }

    public static e a(c cVar) {
        return new e(cVar);
    }

    public static f b(c cVar) {
        return new f(cVar);
    }

    public synchronized void a() {
        e.f.c.g.a.b(this.f17476b);
        this.f17476b = null;
        e.f.c.g.a.c(this.f17477c);
        this.f17477c = null;
    }

    public c b() {
        return this.f17475a;
    }

    private e(c cVar) {
        h.a(cVar);
        this.f17475a = cVar;
    }
}

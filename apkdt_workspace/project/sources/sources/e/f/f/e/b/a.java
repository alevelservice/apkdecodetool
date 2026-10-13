package e.f.f.e.b;

import android.graphics.drawable.Animatable;
import e.f.f.d.c;
import javax.annotation.Nullable;

/* compiled from: ImageLoadingTimeControllerListener.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: b, reason: collision with root package name */
    private long f17306b = -1;

    /* renamed from: c, reason: collision with root package name */
    private long f17307c = -1;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private b f17308d;

    public a(@Nullable b bVar) {
        this.f17308d = bVar;
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void a(String str, @Nullable Object obj, @Nullable Animatable animatable) {
        this.f17307c = System.currentTimeMillis();
        b bVar = this.f17308d;
        if (bVar != null) {
            bVar.a(this.f17307c - this.f17306b);
        }
    }

    @Override // e.f.f.d.c, e.f.f.d.d
    public void b(String str, Object obj) {
        this.f17306b = System.currentTimeMillis();
    }
}

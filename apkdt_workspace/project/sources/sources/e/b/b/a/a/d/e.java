package e.b.b.a.a.d;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LogContextImpl.java */
/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ String f17010e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ String f17011f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ Bundle f17012g;

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ c f17013h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(c cVar, String str, String str2, Bundle bundle) {
        this.f17013h = cVar;
        this.f17010e = str;
        this.f17011f = str2;
        this.f17012g = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17013h.d(this.f17010e, this.f17011f, this.f17012g);
    }
}

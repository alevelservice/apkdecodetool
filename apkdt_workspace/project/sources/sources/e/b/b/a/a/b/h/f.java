package e.b.b.a.a.b.h;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SpmTrackIntegrator.java */
/* loaded from: classes.dex */
public class f implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ String f16946e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ d f16947f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, String str) {
        this.f16947f = dVar;
        this.f16946e = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        map = this.f16947f.f16940a;
        map.remove(this.f16946e);
    }
}

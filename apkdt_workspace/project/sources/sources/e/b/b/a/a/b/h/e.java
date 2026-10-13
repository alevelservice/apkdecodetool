package e.b.b.a.a.b.h;

import android.view.View;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SpmTrackIntegrator.java */
/* loaded from: classes.dex */
public class e implements View.OnAttachStateChangeListener {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ String f16943e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ Object f16944f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ d f16945g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, String str, Object obj) {
        this.f16945g = dVar;
        this.f16943e = str;
        this.f16944f = obj;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        Map map;
        map = this.f16945g.f16940a;
        map.remove(this.f16943e);
        ((View) this.f16944f).removeOnAttachStateChangeListener(this);
    }
}

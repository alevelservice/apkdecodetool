package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzaaz;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static WeakHashMap<View, b> f4511c = new WeakHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    private zzaaz f4512a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<View> f4513b;

    public final void a(a aVar) {
        a((IObjectWrapper) aVar.a());
    }

    public final void a(h hVar) {
        a((IObjectWrapper) hVar.k());
    }

    private final void a(IObjectWrapper iObjectWrapper) {
        WeakReference<View> weakReference = this.f4513b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            qd.d("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!f4511c.containsKey(view)) {
            f4511c.put(view, this);
        }
        zzaaz zzaazVar = this.f4512a;
        if (zzaazVar != null) {
            try {
                zzaazVar.zze(iObjectWrapper);
            } catch (RemoteException e2) {
                qd.b("Unable to call setNativeAd on delegate", e2);
            }
        }
    }
}

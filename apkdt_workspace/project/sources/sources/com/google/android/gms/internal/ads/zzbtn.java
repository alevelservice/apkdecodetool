package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzbtn extends zzaaq {

    /* renamed from: e, reason: collision with root package name */
    private final l10 f11053e;

    /* renamed from: f, reason: collision with root package name */
    private IObjectWrapper f11054f;

    public zzbtn(l10 l10Var) {
        this.f11053e = l10Var;
    }

    private final float a() {
        try {
            return this.f11053e.n().getAspectRatio();
        } catch (RemoteException e2) {
            qd.b("Remote exception getting video controller aspect ratio.", e2);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaan
    public final float getAspectRatio() {
        if (!((Boolean) mu1.e().a(aw1.H3)).booleanValue()) {
            return 0.0f;
        }
        if (this.f11053e.i() != 0.0f) {
            return this.f11053e.i();
        }
        if (this.f11053e.n() != null) {
            return a();
        }
        IObjectWrapper iObjectWrapper = this.f11054f;
        if (iObjectWrapper != null) {
            return a(iObjectWrapper);
        }
        zzaas q = this.f11053e.q();
        if (q == null) {
            return 0.0f;
        }
        float width = (q == null || q.getWidth() == -1 || q.getHeight() == -1) ? 0.0f : q.getWidth() / q.getHeight();
        return width != 0.0f ? width : a(q.zzqf());
    }

    @Override // com.google.android.gms.internal.ads.zzaan
    public final IObjectWrapper zzqh() {
        IObjectWrapper iObjectWrapper = this.f11054f;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzaas q = this.f11053e.q();
        if (q == null) {
            return null;
        }
        return q.zzqf();
    }

    @Override // com.google.android.gms.internal.ads.zzaan
    public final void zzs(IObjectWrapper iObjectWrapper) {
        if (((Boolean) mu1.e().a(aw1.S1)).booleanValue()) {
            this.f11054f = iObjectWrapper;
        }
    }

    private static float a(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }
}

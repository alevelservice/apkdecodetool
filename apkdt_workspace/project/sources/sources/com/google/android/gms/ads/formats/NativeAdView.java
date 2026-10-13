package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzaaw;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public class NativeAdView extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private final FrameLayout f4504e;

    /* renamed from: f, reason: collision with root package name */
    private final zzaaw f4505f;

    public NativeAdView(Context context) {
        super(context);
        this.f4504e = a(context);
        this.f4505f = a();
    }

    private final FrameLayout a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        super.bringChildToFront(this.f4504e);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f4504e;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        try {
            this.f4505f.destroy();
        } catch (RemoteException e2) {
            qd.b("Unable to destroy native ad view", e2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzaaw zzaawVar;
        if (((Boolean) mu1.e().a(aw1.I1)).booleanValue() && (zzaawVar = this.f4505f) != null) {
            try {
                zzaawVar.zzj(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e2) {
                qd.b("Unable to call handleTouchEvent on delegate", e2);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View zzbk = zzbk("1098");
        if (zzbk instanceof AdChoicesView) {
            return (AdChoicesView) zzbk;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        zzaaw zzaawVar = this.f4505f;
        if (zzaawVar != null) {
            try {
                zzaawVar.zzc(ObjectWrapper.wrap(view), i2);
            } catch (RemoteException e2) {
                qd.b("Unable to call onVisibilityChanged on delegate", e2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f4504e);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f4504e == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza("1098", adChoicesView);
    }

    public void setNativeAd(a aVar) {
        try {
            this.f4505f.zze((IObjectWrapper) aVar.a());
        } catch (RemoteException e2) {
            qd.b("Unable to call setNativeAd on delegate", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(String str, View view) {
        try {
            this.f4505f.zzc(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            qd.b("Unable to call setAssetView on delegate", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View zzbk(String str) {
        try {
            IObjectWrapper zzcj = this.f4505f.zzcj(str);
            if (zzcj != null) {
                return (View) ObjectWrapper.unwrap(zzcj);
            }
            return null;
        } catch (RemoteException e2) {
            qd.b("Unable to call getAssetView on delegate", e2);
            return null;
        }
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4504e = a(context);
        this.f4505f = a();
    }

    private final zzaaw a() {
        m.a(this.f4504e, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return mu1.b().a(this.f4504e.getContext(), this, this.f4504e);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4504e = a(context);
        this.f4505f = a();
    }

    @TargetApi(21)
    public NativeAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f4504e = a(context);
        this.f4505f = a();
    }
}

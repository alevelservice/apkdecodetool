package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.r;
import com.google.android.gms.internal.ads.zzaaw;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class UnifiedNativeAdView extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private final FrameLayout f4509e;

    /* renamed from: f, reason: collision with root package name */
    private final zzaaw f4510f;

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.f4509e = a(context);
        this.f4510f = a();
    }

    private final void a(String str, View view) {
        try {
            this.f4510f.zzc(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            qd.b("Unable to call setAssetView on delegate", e2);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        super.bringChildToFront(this.f4509e);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f4509e;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final void destroy() {
        try {
            this.f4510f.destroy();
        } catch (RemoteException e2) {
            qd.b("Unable to destroy native ad view", e2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzaaw zzaawVar;
        if (((Boolean) mu1.e().a(aw1.I1)).booleanValue() && (zzaawVar = this.f4510f) != null) {
            try {
                zzaawVar.zzj(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e2) {
                qd.b("Unable to call handleTouchEvent on delegate", e2);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final AdChoicesView getAdChoicesView() {
        View a2 = a("3011");
        if (a2 instanceof AdChoicesView) {
            return (AdChoicesView) a2;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return a("3005");
    }

    public final View getBodyView() {
        return a("3004");
    }

    public final View getCallToActionView() {
        return a("3002");
    }

    public final View getHeadlineView() {
        return a("3001");
    }

    public final View getIconView() {
        return a("3003");
    }

    public final View getImageView() {
        return a("3008");
    }

    public final MediaView getMediaView() {
        View a2 = a("3010");
        if (a2 instanceof MediaView) {
            return (MediaView) a2;
        }
        if (a2 == null) {
            return null;
        }
        qd.a("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return a("3007");
    }

    public final View getStarRatingView() {
        return a("3009");
    }

    public final View getStoreView() {
        return a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        zzaaw zzaawVar = this.f4510f;
        if (zzaawVar != null) {
            try {
                zzaawVar.zzc(ObjectWrapper.wrap(view), i2);
            } catch (RemoteException e2) {
                qd.b("Unable to call onVisibilityChanged on delegate", e2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f4509e);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f4509e == view) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        a("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        a("3005", view);
    }

    public final void setBodyView(View view) {
        a("3004", view);
    }

    public final void setCallToActionView(View view) {
        a("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f4510f.zzi(ObjectWrapper.wrap(view));
        } catch (RemoteException e2) {
            qd.b("Unable to call setClickConfirmingView on delegate", e2);
        }
    }

    public final void setHeadlineView(View view) {
        a("3001", view);
    }

    public final void setIconView(View view) {
        a("3003", view);
    }

    public final void setImageView(View view) {
        a("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        a("3010", mediaView);
        if (mediaView != null) {
            mediaView.zza(new com.google.android.gms.internal.ads.e(this) { // from class: com.google.android.gms.ads.formats.l

                /* renamed from: a, reason: collision with root package name */
                private final UnifiedNativeAdView f4515a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4515a = this;
                }

                @Override // com.google.android.gms.internal.ads.e
                public final void a(h.a aVar) {
                    this.f4515a.zza(aVar);
                }
            });
            mediaView.zza(new com.google.android.gms.internal.ads.f(this) { // from class: com.google.android.gms.ads.formats.k

                /* renamed from: a, reason: collision with root package name */
                private final UnifiedNativeAdView f4514a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4514a = this;
                }

                @Override // com.google.android.gms.internal.ads.f
                public final void a(ImageView.ScaleType scaleType) {
                    this.f4514a.zza(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(h hVar) {
        try {
            this.f4510f.zze((IObjectWrapper) hVar.k());
        } catch (RemoteException e2) {
            qd.b("Unable to call setNativeAd on delegate", e2);
        }
    }

    public final void setPriceView(View view) {
        a("3007", view);
    }

    public final void setStarRatingView(View view) {
        a("3009", view);
    }

    public final void setStoreView(View view) {
        a("3006", view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(ImageView.ScaleType scaleType) {
        try {
            if (scaleType instanceof ImageView.ScaleType) {
                this.f4510f.zzk(ObjectWrapper.wrap(scaleType));
            }
        } catch (RemoteException e2) {
            qd.b("Unable to call setMediaViewImageScaleType on delegate", e2);
        }
    }

    private final View a(String str) {
        try {
            IObjectWrapper zzcj = this.f4510f.zzcj(str);
            if (zzcj != null) {
                return (View) ObjectWrapper.unwrap(zzcj);
            }
            return null;
        } catch (RemoteException e2) {
            qd.b("Unable to call getAssetView on delegate", e2);
            return null;
        }
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4509e = a(context);
        this.f4510f = a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(h.a aVar) {
        try {
            if (aVar instanceof r) {
                this.f4510f.zza(((r) aVar).a());
            } else if (aVar == null) {
                this.f4510f.zza(null);
            } else {
                qd.a("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
            }
        } catch (RemoteException e2) {
            qd.b("Unable to call setMediaContent on delegate", e2);
        }
    }

    private final FrameLayout a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4509e = a(context);
        this.f4510f = a();
    }

    private final zzaaw a() {
        m.a(this.f4509e, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return mu1.b().a(this.f4509e.getContext(), this, this.f4509e);
    }

    @TargetApi(21)
    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f4509e = a(context);
        this.f4510f = a();
    }
}

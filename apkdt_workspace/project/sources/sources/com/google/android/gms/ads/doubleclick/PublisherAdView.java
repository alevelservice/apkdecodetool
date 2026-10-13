package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.e;
import com.google.android.gms.ads.j;
import com.google.android.gms.ads.k;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.uu1;
import com.google.android.gms.internal.ads.zzve;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class PublisherAdView extends ViewGroup {

    /* renamed from: e, reason: collision with root package name */
    private final uu1 f4482e;

    public PublisherAdView(Context context) {
        super(context);
        this.f4482e = new uu1(this);
    }

    public final void destroy() {
        this.f4482e.a();
    }

    public final com.google.android.gms.ads.b getAdListener() {
        return this.f4482e.b();
    }

    public final com.google.android.gms.ads.d getAdSize() {
        return this.f4482e.c();
    }

    public final com.google.android.gms.ads.d[] getAdSizes() {
        return this.f4482e.d();
    }

    public final String getAdUnitId() {
        return this.f4482e.e();
    }

    public final a getAppEventListener() {
        return this.f4482e.f();
    }

    public final String getMediationAdapterClassName() {
        return this.f4482e.g();
    }

    public final c getOnCustomRenderedAdLoadedListener() {
        return this.f4482e.h();
    }

    public final j getVideoController() {
        return this.f4482e.i();
    }

    public final k getVideoOptions() {
        return this.f4482e.j();
    }

    public final boolean isLoading() {
        return this.f4482e.k();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        publisherAdRequest.a();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i6 = ((i4 - i2) - measuredWidth) / 2;
        int i7 = ((i5 - i3) - measuredHeight) / 2;
        childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
    }

    @Override // android.view.View
    protected final void onMeasure(int i2, int i3) {
        int i4;
        int i5 = 0;
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            measureChild(childAt, i2, i3);
            i5 = childAt.getMeasuredWidth();
            i4 = childAt.getMeasuredHeight();
        } else {
            com.google.android.gms.ads.d dVar = null;
            try {
                dVar = getAdSize();
            } catch (NullPointerException e2) {
                qd.b("Unable to retrieve ad size.", e2);
            }
            if (dVar != null) {
                Context context = getContext();
                int b2 = dVar.b(context);
                i4 = dVar.a(context);
                i5 = b2;
            } else {
                i4 = 0;
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(i5, getSuggestedMinimumWidth()), i2), View.resolveSize(Math.max(i4, getSuggestedMinimumHeight()), i3));
    }

    public final void pause() {
        this.f4482e.l();
    }

    public final void recordManualImpression() {
        this.f4482e.m();
    }

    public final void resume() {
        this.f4482e.n();
    }

    public final void setAdListener(com.google.android.gms.ads.b bVar) {
        this.f4482e.a(bVar);
    }

    public final void setAdSizes(com.google.android.gms.ads.d... dVarArr) {
        if (dVarArr != null && dVarArr.length > 0) {
            this.f4482e.b(dVarArr);
            return;
        }
        throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }

    public final void setAdUnitId(String str) {
        this.f4482e.a(str);
    }

    public final void setAppEventListener(a aVar) {
        this.f4482e.a(aVar);
    }

    @KeepForSdk
    @Deprecated
    public final void setCorrelator(e eVar) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.f4482e.a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(c cVar) {
        this.f4482e.a(cVar);
    }

    public final void setVideoOptions(k kVar) {
        this.f4482e.a(kVar);
    }

    public final boolean zza(zzve zzveVar) {
        return this.f4482e.a(zzveVar);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4482e = new uu1(this, attributeSet, true);
        m.a(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4482e = new uu1(this, attributeSet, true);
    }
}

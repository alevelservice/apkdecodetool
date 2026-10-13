package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.d;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.uu1;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class SearchAdView extends ViewGroup {

    /* renamed from: e, reason: collision with root package name */
    private final uu1 f4669e;

    public SearchAdView(Context context) {
        super(context);
        this.f4669e = new uu1(this);
    }

    public final void destroy() {
        this.f4669e.a();
    }

    public final com.google.android.gms.ads.b getAdListener() {
        return this.f4669e.b();
    }

    public final d getAdSize() {
        return this.f4669e.c();
    }

    public final String getAdUnitId() {
        return this.f4669e.e();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(b bVar) {
        bVar.b();
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
            d dVar = null;
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
        this.f4669e.l();
    }

    public final void resume() {
        this.f4669e.n();
    }

    public final void setAdListener(com.google.android.gms.ads.b bVar) {
        this.f4669e.a(bVar);
    }

    public final void setAdSize(d dVar) {
        this.f4669e.a(dVar);
    }

    public final void setAdUnitId(String str) {
        this.f4669e.a(str);
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(a aVar) {
        if (!d.o.equals(getAdSize())) {
            throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
        }
        aVar.a();
        throw null;
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4669e = new uu1(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f4669e = new uu1(this, attributeSet, false);
    }
}

package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.st1;
import com.google.android.gms.internal.ads.uu1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class BaseAdView extends ViewGroup {
    protected final uu1 zzabf;

    public BaseAdView(Context context, int i2) {
        super(context);
        this.zzabf = new uu1(this, i2);
    }

    public void destroy() {
        this.zzabf.a();
    }

    public b getAdListener() {
        return this.zzabf.b();
    }

    public d getAdSize() {
        return this.zzabf.c();
    }

    public String getAdUnitId() {
        return this.zzabf.e();
    }

    public String getMediationAdapterClassName() {
        return this.zzabf.g();
    }

    public boolean isLoading() {
        return this.zzabf.k();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(AdRequest adRequest) {
        this.zzabf.a(adRequest.a());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
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
    protected void onMeasure(int i2, int i3) {
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

    public void pause() {
        this.zzabf.l();
    }

    public void resume() {
        this.zzabf.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(b bVar) {
        this.zzabf.a(bVar);
        if (bVar == 0) {
            this.zzabf.a((st1) null);
            this.zzabf.a((com.google.android.gms.ads.doubleclick.a) null);
            return;
        }
        if (bVar instanceof st1) {
            this.zzabf.a((st1) bVar);
        }
        if (bVar instanceof com.google.android.gms.ads.doubleclick.a) {
            this.zzabf.a((com.google.android.gms.ads.doubleclick.a) bVar);
        }
    }

    public void setAdSize(d dVar) {
        this.zzabf.a(dVar);
    }

    public void setAdUnitId(String str) {
        this.zzabf.a(str);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        this.zzabf = new uu1(this, attributeSet, false, i2);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2);
        this.zzabf = new uu1(this, attributeSet, false, i3);
    }
}

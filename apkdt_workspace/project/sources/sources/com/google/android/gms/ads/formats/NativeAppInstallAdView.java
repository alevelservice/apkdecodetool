package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.ads.qd;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public final class NativeAppInstallAdView extends NativeAdView {
    public NativeAppInstallAdView(Context context) {
        super(context);
    }

    public final View getBodyView() {
        return super.zzbk("2004");
    }

    public final View getCallToActionView() {
        return super.zzbk("2002");
    }

    public final View getHeadlineView() {
        return super.zzbk("2001");
    }

    public final View getIconView() {
        return super.zzbk("2003");
    }

    public final View getImageView() {
        return super.zzbk("2007");
    }

    public final MediaView getMediaView() {
        View zzbk = super.zzbk("2011");
        if (zzbk instanceof MediaView) {
            return (MediaView) zzbk;
        }
        if (zzbk == null) {
            return null;
        }
        qd.a("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return super.zzbk("2006");
    }

    public final View getStarRatingView() {
        return super.zzbk("2008");
    }

    public final View getStoreView() {
        return super.zzbk("2005");
    }

    public final void setBodyView(View view) {
        super.zza("2004", view);
    }

    public final void setCallToActionView(View view) {
        super.zza("2002", view);
    }

    public final void setHeadlineView(View view) {
        super.zza("2001", view);
    }

    public final void setIconView(View view) {
        super.zza("2003", view);
    }

    public final void setImageView(View view) {
        super.zza("2007", view);
    }

    public final void setMediaView(MediaView mediaView) {
        super.zza("2011", mediaView);
    }

    public final void setPriceView(View view) {
        super.zza("2006", view);
    }

    public final void setStarRatingView(View view) {
        super.zza("2008", view);
    }

    public final void setStoreView(View view) {
        super.zza("2005", view);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}

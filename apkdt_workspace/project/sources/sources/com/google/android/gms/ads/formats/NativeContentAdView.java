package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.ads.qd;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public final class NativeContentAdView extends NativeAdView {
    public NativeContentAdView(Context context) {
        super(context);
    }

    public final View getAdvertiserView() {
        return super.zzbk("1004");
    }

    public final View getBodyView() {
        return super.zzbk("1002");
    }

    public final View getCallToActionView() {
        return super.zzbk("1003");
    }

    public final View getHeadlineView() {
        return super.zzbk("1001");
    }

    public final View getImageView() {
        return super.zzbk("1005");
    }

    public final View getLogoView() {
        return super.zzbk("1006");
    }

    public final MediaView getMediaView() {
        View zzbk = super.zzbk("1009");
        if (zzbk instanceof MediaView) {
            return (MediaView) zzbk;
        }
        if (zzbk == null) {
            return null;
        }
        qd.a("View is not an instance of MediaView");
        return null;
    }

    public final void setAdvertiserView(View view) {
        super.zza("1004", view);
    }

    public final void setBodyView(View view) {
        super.zza("1002", view);
    }

    public final void setCallToActionView(View view) {
        super.zza("1003", view);
    }

    public final void setHeadlineView(View view) {
        super.zza("1001", view);
    }

    public final void setImageView(View view) {
        super.zza("1005", view);
    }

    public final void setLogoView(View view) {
        super.zza("1006", view);
    }

    public final void setMediaView(MediaView mediaView) {
        super.zza("1009", mediaView);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}

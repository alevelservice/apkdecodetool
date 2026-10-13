package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.h;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class MediaView extends FrameLayout {

    /* renamed from: e, reason: collision with root package name */
    private h.a f4484e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f4485f;

    /* renamed from: g, reason: collision with root package name */
    private com.google.android.gms.internal.ads.e f4486g;

    /* renamed from: h, reason: collision with root package name */
    private ImageView.ScaleType f4487h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f4488i;

    /* renamed from: j, reason: collision with root package name */
    private com.google.android.gms.internal.ads.f f4489j;

    public MediaView(Context context) {
        super(context);
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f4488i = true;
        this.f4487h = scaleType;
        com.google.android.gms.internal.ads.f fVar = this.f4489j;
        if (fVar != null) {
            fVar.a(this.f4487h);
        }
    }

    public void setMediaContent(h.a aVar) {
        this.f4485f = true;
        this.f4484e = aVar;
        com.google.android.gms.internal.ads.e eVar = this.f4486g;
        if (eVar != null) {
            eVar.a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void zza(com.google.android.gms.internal.ads.e eVar) {
        this.f4486g = eVar;
        if (this.f4485f) {
            eVar.a(this.f4484e);
        }
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @TargetApi(21)
    public MediaView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void zza(com.google.android.gms.internal.ads.f fVar) {
        this.f4489j = fVar;
        if (this.f4488i) {
            fVar.a(this.f4487h);
        }
    }
}

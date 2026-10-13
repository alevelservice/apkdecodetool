package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public abstract class zzaya extends TextureView implements wf {
    protected final kf zzdxk;
    protected final uf zzdxl;

    public zzaya(Context context) {
        super(context);
        this.zzdxk = new kf();
        this.zzdxl = new uf(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i2);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f2, float f3);

    public abstract void zza(cf cfVar);

    public void zzb(String str, String[] strArr) {
        setVideoPath(str);
    }

    public void zzct(int i2) {
    }

    public void zzcu(int i2) {
    }

    public void zzcv(int i2) {
    }

    public void zzcw(int i2) {
    }

    public void zzcx(int i2) {
    }

    public abstract String zzwm();

    public abstract void zzwq();
}

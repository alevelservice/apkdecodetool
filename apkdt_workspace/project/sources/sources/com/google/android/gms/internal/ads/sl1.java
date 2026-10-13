package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(21)
/* loaded from: classes.dex */
final class sl1 implements rl1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f9392a;

    /* renamed from: b, reason: collision with root package name */
    private MediaCodecInfo[] f9393b;

    public sl1(boolean z) {
        this.f9392a = z ? 1 : 0;
    }

    private final void c() {
        if (this.f9393b == null) {
            this.f9393b = new MediaCodecList(this.f9392a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final int a() {
        c();
        return this.f9393b.length;
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final boolean b() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final MediaCodecInfo a(int i2) {
        c();
        return this.f9393b[i2];
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }
}

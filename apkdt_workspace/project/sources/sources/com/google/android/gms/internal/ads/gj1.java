package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(24)
/* loaded from: classes.dex */
final class gj1 {

    /* renamed from: a, reason: collision with root package name */
    private final MediaCodec.CryptoInfo f6884a;

    /* renamed from: b, reason: collision with root package name */
    private final MediaCodec.CryptoInfo.Pattern f6885b;

    private gj1(MediaCodec.CryptoInfo cryptoInfo) {
        this.f6884a = cryptoInfo;
        this.f6885b = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2, int i3) {
        this.f6885b.set(i2, i3);
        this.f6884a.setPattern(this.f6885b);
    }
}

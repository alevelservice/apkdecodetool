package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ql1 implements rl1 {
    private ql1() {
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final int a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final MediaCodecInfo a(int i2) {
        return MediaCodecList.getCodecInfoAt(i2);
    }

    @Override // com.google.android.gms.internal.ads.rl1
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }
}

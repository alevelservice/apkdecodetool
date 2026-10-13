package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(23)
/* loaded from: classes.dex */
final class mp1 implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ hp1 f8207a;

    private mp1(hp1 hp1Var, MediaCodec mediaCodec) {
        this.f8207a = hp1Var;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(@NonNull MediaCodec mediaCodec, long j2, long j3) {
        hp1 hp1Var = this.f8207a;
        if (this != hp1Var.y0) {
            return;
        }
        hp1Var.z();
    }
}

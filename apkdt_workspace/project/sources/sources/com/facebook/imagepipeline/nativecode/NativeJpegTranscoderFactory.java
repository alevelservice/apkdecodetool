package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.DoNotStrip;
import javax.annotation.Nullable;

@DoNotStrip
/* loaded from: classes.dex */
public class NativeJpegTranscoderFactory implements com.facebook.imagepipeline.transcoder.d {

    /* renamed from: a, reason: collision with root package name */
    private final int f3886a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f3887b;

    @DoNotStrip
    public NativeJpegTranscoderFactory(int i2, boolean z) {
        this.f3886a = i2;
        this.f3887b = z;
    }

    @Override // com.facebook.imagepipeline.transcoder.d
    @DoNotStrip
    @Nullable
    public com.facebook.imagepipeline.transcoder.c createImageTranscoder(e.f.h.c cVar, boolean z) {
        if (cVar != e.f.h.b.f17450a) {
            return null;
        }
        return new NativeJpegTranscoder(z, this.f3886a, this.f3887b);
    }
}

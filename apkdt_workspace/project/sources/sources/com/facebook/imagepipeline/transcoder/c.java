package com.facebook.imagepipeline.transcoder;

import com.facebook.imagepipeline.common.RotationOptions;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* compiled from: ImageTranscoder.java */
/* loaded from: classes.dex */
public interface c {
    b a(e.f.i.g.e eVar, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2, @Nullable e.f.h.c cVar, @Nullable Integer num);

    String a();

    boolean a(e.f.h.c cVar);

    boolean a(e.f.i.g.e eVar, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2);
}

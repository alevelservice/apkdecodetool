package com.facebook.imagepipeline.nativecode;

import java.lang.reflect.InvocationTargetException;

/* compiled from: NativeImageTranscoderFactory.java */
/* loaded from: classes.dex */
public final class c {
    public static com.facebook.imagepipeline.transcoder.d a(int i2, boolean z) {
        try {
            return (com.facebook.imagepipeline.transcoder.d) Class.forName("com.facebook.imagepipeline.nativecode.NativeJpegTranscoderFactory").getConstructor(Integer.TYPE, Boolean.TYPE).newInstance(Integer.valueOf(i2), Boolean.valueOf(z));
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e2) {
            throw new RuntimeException("Dependency ':native-imagetranscoder' is needed to use the default native image transcoder.", e2);
        }
    }
}

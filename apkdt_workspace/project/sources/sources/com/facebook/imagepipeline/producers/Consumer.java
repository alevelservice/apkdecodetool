package com.facebook.imagepipeline.producers;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public interface Consumer<T> {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Status {
    }

    void a();

    void a(float f2);

    void a(T t, int i2);

    void a(Throwable th);
}

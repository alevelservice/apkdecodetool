package com.alipay.mobile.security.bio.service.local.transfer;

/* loaded from: classes.dex */
public interface ProgressCallback<Source, Result> {
    void onError(Source source, Result result);

    void onFinish(Source source, Result result);

    void onProgress(Source source, int i2, long j2, long j3);

    void onStart(Source source);
}

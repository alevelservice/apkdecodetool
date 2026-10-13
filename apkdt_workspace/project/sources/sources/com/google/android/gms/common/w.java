package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
final class w extends u {

    /* renamed from: e, reason: collision with root package name */
    private final Callable<String> f5439e;

    private w(Callable<String> callable) {
        super(false, null, null);
        this.f5439e = callable;
    }

    @Override // com.google.android.gms.common.u
    final String a() {
        try {
            return this.f5439e.call();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}

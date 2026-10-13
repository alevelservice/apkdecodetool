package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ee1 extends fe1 {

    /* renamed from: a, reason: collision with root package name */
    private Logger f6408a;

    public ee1(String str) {
        this.f6408a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.fe1
    public final void a(String str) {
        this.f6408a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}

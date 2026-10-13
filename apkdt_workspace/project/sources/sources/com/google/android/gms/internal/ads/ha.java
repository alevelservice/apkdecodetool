package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ha {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private BigInteger f7027a = BigInteger.ONE;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private String f7028b = ZimPlatform.REASON_0;

    public final synchronized String a() {
        String bigInteger;
        bigInteger = this.f7027a.toString();
        this.f7027a = this.f7027a.add(BigInteger.ONE);
        this.f7028b = bigInteger;
        return bigInteger;
    }

    public final synchronized String b() {
        return this.f7028b;
    }
}

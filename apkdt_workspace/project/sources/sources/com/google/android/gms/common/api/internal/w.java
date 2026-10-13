package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class w implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ BasePendingResult f5141a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ n1 f5142b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(n1 n1Var, BasePendingResult basePendingResult) {
        this.f5142b = n1Var;
        this.f5141a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.h.a
    public final void a(Status status) {
        Map map;
        map = this.f5142b.f5109a;
        map.remove(this.f5141a);
    }
}

package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class f<T extends IInterface> extends BaseGmsClient<T> implements a.f, g {
    private final c w;
    private final Set<Scope> x;
    private final Account y;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.content.Context r10, android.os.Looper r11, int r12, com.google.android.gms.common.internal.c r13, com.google.android.gms.common.api.internal.f r14, com.google.android.gms.common.api.internal.m r15) {
        /*
            r9 = this;
            com.google.android.gms.common.internal.h r3 = com.google.android.gms.common.internal.h.a(r10)
            com.google.android.gms.common.c r4 = com.google.android.gms.common.c.a()
            com.google.android.gms.common.internal.m.a(r14)
            r7 = r14
            com.google.android.gms.common.api.internal.f r7 = (com.google.android.gms.common.api.internal.f) r7
            com.google.android.gms.common.internal.m.a(r15)
            r8 = r15
            com.google.android.gms.common.api.internal.m r8 = (com.google.android.gms.common.api.internal.m) r8
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.f.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.c, com.google.android.gms.common.api.internal.f, com.google.android.gms.common.api.internal.m):void");
    }

    @Nullable
    private static BaseGmsClient.a a(com.google.android.gms.common.api.internal.f fVar) {
        if (fVar == null) {
            return null;
        }
        return new u(fVar);
    }

    private final Set<Scope> b(@NonNull Set<Scope> set) {
        a(set);
        Iterator<Scope> it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public final c A() {
        return this.w;
    }

    @NonNull
    @KeepForSdk
    protected Set<Scope> a(@NonNull Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    @KeepForSdk
    public Set<Scope> c() {
        return j() ? this.x : Collections.emptySet();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.a.f
    public int h() {
        return super.h();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Account n() {
        return this.y;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @KeepForSdk
    protected final Set<Scope> t() {
        return this.x;
    }

    @Nullable
    private static BaseGmsClient.b a(com.google.android.gms.common.api.internal.m mVar) {
        if (mVar == null) {
            return null;
        }
        return new v(mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    @Deprecated
    public f(Context context, Looper looper, int i2, c cVar, f.a aVar, f.b bVar) {
        this(context, looper, i2, cVar, (com.google.android.gms.common.api.internal.f) aVar, (com.google.android.gms.common.api.internal.m) bVar);
    }

    @VisibleForTesting
    protected f(Context context, Looper looper, h hVar, com.google.android.gms.common.c cVar, int i2, c cVar2, com.google.android.gms.common.api.internal.f fVar, com.google.android.gms.common.api.internal.m mVar) {
        super(context, looper, hVar, cVar, i2, a(fVar), a(mVar), cVar2.f());
        this.w = cVar2;
        this.y = cVar2.a();
        Set<Scope> d2 = cVar2.d();
        b(d2);
        this.x = d2;
    }
}

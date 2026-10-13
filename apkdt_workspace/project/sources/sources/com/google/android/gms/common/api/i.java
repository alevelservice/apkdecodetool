package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class i {

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    private static final class a<R extends m> extends BasePendingResult<R> {
        private final R o;

        public a(f fVar, R r) {
            super(fVar);
            this.o = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public final R a(Status status) {
            return this.o;
        }
    }

    @KeepForSdk
    public static h<Status> a(Status status, f fVar) {
        com.google.android.gms.common.internal.m.a(status, "Result must not be null");
        com.google.android.gms.common.api.internal.r rVar = new com.google.android.gms.common.api.internal.r(fVar);
        rVar.a((com.google.android.gms.common.api.internal.r) status);
        return rVar;
    }

    @KeepForSdk
    public static <R extends m> h<R> a(R r, f fVar) {
        com.google.android.gms.common.internal.m.a(r, "Result must not be null");
        com.google.android.gms.common.internal.m.a(!r.i().o(), "Status code must not be SUCCESS");
        a aVar = new a(fVar, r);
        aVar.a((a) r);
        return aVar;
    }
}

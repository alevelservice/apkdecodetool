package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class k<L> {

    /* renamed from: a, reason: collision with root package name */
    private final c f5094a;

    /* renamed from: b, reason: collision with root package name */
    private volatile L f5095b;

    /* renamed from: c, reason: collision with root package name */
    private final a<L> f5096c;

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static final class a<L> {

        /* renamed from: a, reason: collision with root package name */
        private final L f5097a;

        /* renamed from: b, reason: collision with root package name */
        private final String f5098b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @KeepForSdk
        public a(L l2, String str) {
            this.f5097a = l2;
            this.f5098b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f5097a == aVar.f5097a && this.f5098b.equals(aVar.f5098b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f5097a) * 31) + this.f5098b.hashCode();
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface b<L> {
        @KeepForSdk
        void a();

        @KeepForSdk
        void a(L l2);
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    /* loaded from: classes.dex */
    private final class c extends com.google.android.gms.internal.base.c {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            com.google.android.gms.common.internal.m.a(message.what == 1);
            k.this.b((b) message.obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @KeepForSdk
    public k(@NonNull Looper looper, @NonNull L l2, @NonNull String str) {
        this.f5094a = new c(looper);
        com.google.android.gms.common.internal.m.a(l2, "Listener must not be null");
        this.f5095b = l2;
        com.google.android.gms.common.internal.m.b(str);
        this.f5096c = new a<>(l2, str);
    }

    @KeepForSdk
    public final void a(b<? super L> bVar) {
        com.google.android.gms.common.internal.m.a(bVar, "Notifier must not be null");
        this.f5094a.sendMessage(this.f5094a.obtainMessage(1, bVar));
    }

    @NonNull
    @KeepForSdk
    public final a<L> b() {
        return this.f5096c;
    }

    @KeepForSdk
    final void b(b<? super L> bVar) {
        L l2 = this.f5095b;
        if (l2 == null) {
            bVar.a();
            return;
        }
        try {
            bVar.a(l2);
        } catch (RuntimeException e2) {
            bVar.a();
            throw e2;
        }
    }

    @KeepForSdk
    public final void a() {
        this.f5095b = null;
    }
}

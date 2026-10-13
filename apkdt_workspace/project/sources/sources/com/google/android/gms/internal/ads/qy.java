package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class qy {

    /* renamed from: a, reason: collision with root package name */
    private final sz f9018a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final fi f9019b;

    public qy(sz szVar) {
        this(szVar, null);
    }

    @Nullable
    public final fi a() {
        return this.f9019b;
    }

    public final sz b() {
        return this.f9018a;
    }

    @Nullable
    public final View c() {
        fi fiVar = this.f9019b;
        if (fiVar == null) {
            return null;
        }
        return fiVar.getWebView();
    }

    public qy(sz szVar, @Nullable fi fiVar) {
        this.f9018a = szVar;
        this.f9019b = fiVar;
    }

    public Set<ox<jt>> a(tz tzVar) {
        return Collections.singleton(ox.a(tzVar, yd.f10544e));
    }

    public final ox<wv> a(Executor executor) {
        final fi fiVar = this.f9019b;
        return new ox<>(new wv(fiVar) { // from class: com.google.android.gms.internal.ads.sy

            /* renamed from: e, reason: collision with root package name */
            private final fi f9469e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9469e = fiVar;
            }

            @Override // com.google.android.gms.internal.ads.wv
            public final void c() {
                fi fiVar2 = this.f9469e;
                if (fiVar2.zzyu() != null) {
                    fiVar2.zzyu().close();
                }
            }
        }, executor);
    }
}

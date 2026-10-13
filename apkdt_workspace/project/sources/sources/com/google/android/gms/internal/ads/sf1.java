package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.ev;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sf1 extends sg1 {
    private static final rg1<pc0> n = new rg1<>();

    /* renamed from: l, reason: collision with root package name */
    private final Context f9342l;
    private yq m;

    public sf1(cf1 cf1Var, String str, String str2, ev.b bVar, int i2, int i3, Context context, yq yqVar) {
        super(cf1Var, str, str2, bVar, i2, 27);
        this.m = null;
        this.f9342l = context;
        this.m = yqVar;
    }

    private final String c() {
        try {
            if (this.f9345e.m() != null) {
                this.f9345e.m().get();
            }
            ev l2 = this.f9345e.l();
            if (l2 == null || !l2.m()) {
                return null;
            }
            return l2.k();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039 A[Catch: all -> 0x011e, TryCatch #1 {, blocks: (B:4:0x000d, B:6:0x0017, B:8:0x001f, B:10:0x0029, B:15:0x0039, B:17:0x0045, B:18:0x0082, B:21:0x0091, B:23:0x00b7, B:25:0x00e7, B:26:0x00c1, B:30:0x00ce, B:32:0x00d8, B:33:0x00db, B:34:0x0048, B:37:0x0056, B:39:0x005c, B:42:0x006b, B:44:0x0075, B:46:0x007d, B:47:0x0080, B:49:0x00ea, B:50:0x00f0), top: B:3:0x000d }] */
    @Override // com.google.android.gms.internal.ads.sg1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void a() {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sf1.a():void");
    }

    private static String a(yq yqVar) {
        if (yqVar == null || !yqVar.n() || kf1.b(yqVar.o().k())) {
            return null;
        }
        return yqVar.o().k();
    }
}

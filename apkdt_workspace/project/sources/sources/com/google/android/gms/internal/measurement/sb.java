package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzz;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class sb extends zzz.a {

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f12104i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ String f12105j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ Context f12106k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ Bundle f12107l;
    private final /* synthetic */ zzz m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sb(zzz zzzVar, String str, String str2, Context context, Bundle bundle) {
        super(zzzVar);
        this.m = zzzVar;
        this.f12104i = str;
        this.f12105j = str2;
        this.f12106k = context;
        this.f12107l = bundle;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
    
        if (r4 < r3) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0054 A[Catch: RemoteException -> 0x0098, TryCatch #0 {RemoteException -> 0x0098, blocks: (B:3:0x0002, B:5:0x0019, B:6:0x002a, B:11:0x003f, B:13:0x0054, B:16:0x005a, B:18:0x0068, B:22:0x007b), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005a A[Catch: RemoteException -> 0x0098, TryCatch #0 {RemoteException -> 0x0098, blocks: (B:3:0x0002, B:5:0x0019, B:6:0x002a, B:11:0x003f, B:13:0x0054, B:16:0x005a, B:18:0x0068, B:22:0x007b), top: B:2:0x0002 }] */
    @Override // com.google.android.gms.internal.measurement.zzz.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r14 = this;
            r0 = 0
            r1 = 1
            com.google.android.gms.internal.measurement.zzz r2 = r14.m     // Catch: android.os.RemoteException -> L98
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: android.os.RemoteException -> L98
            r3.<init>()     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz.a(r2, r3)     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz r2 = r14.m     // Catch: android.os.RemoteException -> L98
            java.lang.String r3 = r14.f12104i     // Catch: android.os.RemoteException -> L98
            java.lang.String r4 = r14.f12105j     // Catch: android.os.RemoteException -> L98
            boolean r2 = com.google.android.gms.internal.measurement.zzz.a(r2, r3, r4)     // Catch: android.os.RemoteException -> L98
            r3 = 0
            if (r2 == 0) goto L27
            java.lang.String r3 = r14.f12105j     // Catch: android.os.RemoteException -> L98
            java.lang.String r2 = r14.f12104i     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz r4 = r14.m     // Catch: android.os.RemoteException -> L98
            java.lang.String r4 = com.google.android.gms.internal.measurement.zzz.b(r4)     // Catch: android.os.RemoteException -> L98
            r10 = r2
            r11 = r3
            r9 = r4
            goto L2a
        L27:
            r9 = r3
            r10 = r9
            r11 = r10
        L2a:
            android.content.Context r2 = r14.f12106k     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz.f(r2)     // Catch: android.os.RemoteException -> L98
            java.lang.Boolean r2 = com.google.android.gms.internal.measurement.zzz.i()     // Catch: android.os.RemoteException -> L98
            boolean r2 = r2.booleanValue()     // Catch: android.os.RemoteException -> L98
            if (r2 != 0) goto L3e
            if (r10 == 0) goto L3c
            goto L3e
        L3c:
            r2 = 0
            goto L3f
        L3e:
            r2 = 1
        L3f:
            com.google.android.gms.internal.measurement.zzz r3 = r14.m     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz r4 = r14.m     // Catch: android.os.RemoteException -> L98
            android.content.Context r5 = r14.f12106k     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzk r4 = r4.a(r5, r2)     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz.a(r3, r4)     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz r3 = r14.m     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzk r3 = com.google.android.gms.internal.measurement.zzz.c(r3)     // Catch: android.os.RemoteException -> L98
            if (r3 != 0) goto L5a
            com.google.android.gms.internal.measurement.zzz r2 = r14.m     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz.b(r2)     // Catch: android.os.RemoteException -> L98
            return
        L5a:
            android.content.Context r3 = r14.f12106k     // Catch: android.os.RemoteException -> L98
            int r3 = com.google.android.gms.internal.measurement.zzz.g(r3)     // Catch: android.os.RemoteException -> L98
            android.content.Context r4 = r14.f12106k     // Catch: android.os.RemoteException -> L98
            int r4 = com.google.android.gms.internal.measurement.zzz.h(r4)     // Catch: android.os.RemoteException -> L98
            if (r2 == 0) goto L73
            int r2 = java.lang.Math.max(r3, r4)     // Catch: android.os.RemoteException -> L98
            if (r4 >= r3) goto L70
        L6e:
            r3 = 1
            goto L71
        L70:
            r3 = 0
        L71:
            r8 = r3
            goto L7b
        L73:
            if (r3 <= 0) goto L77
            r2 = r3
            goto L78
        L77:
            r2 = r4
        L78:
            if (r3 <= 0) goto L70
            goto L6e
        L7b:
            com.google.android.gms.internal.measurement.zzx r13 = new com.google.android.gms.internal.measurement.zzx     // Catch: android.os.RemoteException -> L98
            r4 = 16250(0x3f7a, double:8.0286E-320)
            long r6 = (long) r2     // Catch: android.os.RemoteException -> L98
            android.os.Bundle r12 = r14.f12107l     // Catch: android.os.RemoteException -> L98
            r3 = r13
            r3.<init>(r4, r6, r8, r9, r10, r11, r12)     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzz r2 = r14.m     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.internal.measurement.zzk r2 = com.google.android.gms.internal.measurement.zzz.c(r2)     // Catch: android.os.RemoteException -> L98
            android.content.Context r3 = r14.f12106k     // Catch: android.os.RemoteException -> L98
            com.google.android.gms.dynamic.IObjectWrapper r3 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r3)     // Catch: android.os.RemoteException -> L98
            long r4 = r14.f12267e     // Catch: android.os.RemoteException -> L98
            r2.initialize(r3, r13, r4)     // Catch: android.os.RemoteException -> L98
            return
        L98:
            r2 = move-exception
            com.google.android.gms.internal.measurement.zzz r3 = r14.m
            com.google.android.gms.internal.measurement.zzz.a(r3, r2, r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.sb.a():void");
    }
}

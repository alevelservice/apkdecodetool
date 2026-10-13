package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class in1 extends jn1 {

    /* renamed from: d, reason: collision with root package name */
    private final AtomicReference<hn1> f7346d;

    public in1() {
        this(null);
    }

    private static int a(int i2, int i3) {
        if (i2 == -1) {
            return i3 == -1 ? 0 : -1;
        }
        if (i3 == -1) {
            return 1;
        }
        return i2 - i3;
    }

    private static boolean b(int i2, boolean z) {
        int i3 = i2 & 3;
        if (i3 != 3) {
            return z && i3 == 2;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x017d, code lost:
    
        if (r10 <= r11) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a3  */
    @Override // com.google.android.gms.internal.ads.jn1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.on1[] a(com.google.android.gms.internal.ads.sh1[] r37, com.google.android.gms.internal.ads.bn1[] r38, int[][][] r39) {
        /*
            Method dump skipped, instructions count: 1106
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.in1.a(com.google.android.gms.internal.ads.sh1[], com.google.android.gms.internal.ads.bn1[], int[][][]):com.google.android.gms.internal.ads.on1[]");
    }

    private in1(nn1 nn1Var) {
        this.f7346d = new AtomicReference<>(new hn1());
    }

    private static boolean a(zzgq zzgqVar, String str) {
        return str != null && TextUtils.equals(str, cp1.b(zzgqVar.C));
    }
}

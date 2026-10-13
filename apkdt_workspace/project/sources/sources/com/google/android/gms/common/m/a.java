package com.google.android.gms.common.m;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.i;
import java.util.Locale;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final String f5350a;

    /* renamed from: b, reason: collision with root package name */
    private final String f5351b;

    /* renamed from: c, reason: collision with root package name */
    private final int f5352c;

    /* JADX WARN: Illegal instructions before constructor call */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(java.lang.String r7, java.lang.String... r8) {
        /*
            r6 = this;
            int r0 = r8.length
            if (r0 != 0) goto L6
            java.lang.String r8 = ""
            goto L36
        L6:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 91
            r0.append(r1)
            int r1 = r8.length
            r2 = 0
        L12:
            if (r2 >= r1) goto L28
            r3 = r8[r2]
            int r4 = r0.length()
            r5 = 1
            if (r4 <= r5) goto L22
            java.lang.String r4 = ","
            r0.append(r4)
        L22:
            r0.append(r3)
            int r2 = r2 + 1
            goto L12
        L28:
            r8 = 93
            r0.append(r8)
            r8 = 32
            r0.append(r8)
            java.lang.String r8 = r0.toString()
        L36:
            r6.<init>(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.m.a.<init>(java.lang.String, java.lang.String[]):void");
    }

    @KeepForSdk
    public boolean a(int i2) {
        return this.f5352c <= i2;
    }

    @KeepForSdk
    public void b(String str, @Nullable Object... objArr) {
        c(str, objArr);
    }

    @KeepForSdk
    protected String c(String str, @Nullable Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f5351b.concat(str);
    }

    @KeepForSdk
    public void a(String str, @Nullable Object... objArr) {
        if (a(3)) {
            c(str, objArr);
        }
    }

    private a(String str, String str2) {
        this.f5351b = str2;
        this.f5350a = str;
        new i(str);
        int i2 = 2;
        while (7 >= i2 && !Log.isLoggable(this.f5350a, i2)) {
            i2++;
        }
        this.f5352c = i2;
    }
}

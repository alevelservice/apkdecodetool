package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class jh implements com.google.android.gms.common.api.j {

    /* renamed from: e, reason: collision with root package name */
    protected Context f7493e;

    /* renamed from: f, reason: collision with root package name */
    protected String f7494f;

    /* renamed from: g, reason: collision with root package name */
    protected WeakReference<tf> f7495g;

    public jh(tf tfVar) {
        this.f7493e = tfVar.getContext();
        this.f7494f = com.google.android.gms.ads.internal.n.c().a(this.f7493e, tfVar.zzxp().f11000e);
        this.f7495g = new WeakReference<>(tfVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String c(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 96784904:
                if (str.equals(HummerConstants.HUMMER_ERROR)) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            default:
                return "internal";
            case 6:
            case 7:
                return "io";
            case '\b':
            case '\t':
                return "network";
            case '\n':
            case 11:
                return "policy";
        }
    }

    @Override // com.google.android.gms.common.api.j
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i2) {
    }

    public abstract boolean a(String str);

    public boolean a(String str, String[] strArr) {
        return a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b(String str) {
        mu1.a();
        return gd.a(str);
    }

    public abstract void b();

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i2) {
    }

    @VisibleForTesting
    public final void a(String str, String str2, long j2, long j3, boolean z, int i2, int i3) {
        gd.f6840b.post(new lh(this, str, str2, j2, j3, z, i2, i3));
    }

    @VisibleForTesting
    public final void a(String str, String str2, int i2, int i3, long j2, long j3, boolean z, int i4, int i5) {
        gd.f6840b.post(new kh(this, str, str2, i2, i3, j2, j3, z, i4, i5));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, String str2, int i2) {
        gd.f6840b.post(new nh(this, str, str2, i2));
    }

    @VisibleForTesting
    public final void a(String str, String str2, long j2) {
        gd.f6840b.post(new mh(this, str, str2, j2));
    }

    @VisibleForTesting
    public final void a(String str, String str2, String str3, @Nullable String str4) {
        gd.f6840b.post(new ph(this, str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, Map<String, String> map) {
        tf tfVar = this.f7495g.get();
        if (tfVar != null) {
            tfVar.zza(str, map);
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzkv;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tj1 {

    /* renamed from: c, reason: collision with root package name */
    private static final Pattern f9593c;

    /* renamed from: a, reason: collision with root package name */
    public int f9594a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f9595b = -1;

    static {
        new xj1();
        f9593c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    }

    public final boolean a(zzkv zzkvVar) {
        for (int i2 = 0; i2 < zzkvVar.a(); i2++) {
            zzkv.zza a2 = zzkvVar.a(i2);
            if (a2 instanceof zzlb) {
                zzlb zzlbVar = (zzlb) a2;
                if (a(zzlbVar.f11210g, zzlbVar.f11211h)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = f9593c.matcher(str2);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f9594a = parseInt;
                    this.f9595b = parseInt2;
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public final boolean a() {
        return (this.f9594a == -1 || this.f9595b == -1) ? false : true;
    }
}

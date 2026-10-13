package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.io.UnsupportedEncodingException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class bc extends uq1<String> {
    private final Object r;

    @Nullable
    @GuardedBy("mLock")
    private k<String> s;

    public bc(int i2, String str, k<String> kVar, @Nullable iv1 iv1Var) {
        super(i2, str, iv1Var);
        this.r = new Object();
        this.s = kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uq1
    public final hw1<String> a(uo1 uo1Var) {
        String str;
        try {
            byte[] bArr = uo1Var.f9785b;
            String str2 = "ISO-8859-1";
            String str3 = uo1Var.f9786c.get("Content-Type");
            if (str3 != null) {
                String[] split = str3.split(";", 0);
                int i2 = 1;
                while (true) {
                    if (i2 >= split.length) {
                        break;
                    }
                    String[] split2 = split[i2].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str2 = split2[1];
                        break;
                    }
                    i2++;
                }
            }
            str = new String(bArr, str2);
        } catch (UnsupportedEncodingException unused) {
            str = new String(uo1Var.f9785b);
        }
        return hw1.a(str, d8.a(uo1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str) {
        k<String> kVar;
        synchronized (this.r) {
            kVar = this.s;
        }
        if (kVar != null) {
            kVar.a(str);
        }
    }
}

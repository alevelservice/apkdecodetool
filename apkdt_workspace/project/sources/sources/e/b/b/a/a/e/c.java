package e.b.b.a.a.e;

import android.text.TextUtils;

/* compiled from: CommonUtils.java */
/* loaded from: classes.dex */
public class c {
    public static String a(Exception exc, String str) {
        return TextUtils.isEmpty(exc.getMessage()) ? str : exc.getMessage();
    }
}

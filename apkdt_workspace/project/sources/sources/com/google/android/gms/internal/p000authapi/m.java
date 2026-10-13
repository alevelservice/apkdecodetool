package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.a.a;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.internal.safeparcel.c;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class m {
    public static PendingIntent a(Context context, @Nullable a.C0079a c0079a, HintRequest hintRequest, @Nullable String str) {
        String str2;
        com.google.android.gms.common.internal.m.a(context, "context must not be null");
        com.google.android.gms.common.internal.m.a(hintRequest, "request must not be null");
        String c2 = c0079a == null ? null : c0079a.c();
        if (TextUtils.isEmpty(str)) {
            str2 = d.a();
        } else {
            com.google.android.gms.common.internal.m.a(str);
            str2 = str;
        }
        Intent putExtra = new Intent("com.google.android.gms.auth.api.credentials.PICKER").putExtra("claimedCallingPackage", c2);
        putExtra.putExtra("logSessionId", str2);
        c.a(hintRequest, putExtra, "com.google.android.gms.credentials.HintRequest");
        return PendingIntent.getActivity(context, 2000, putExtra, 134217728);
    }
}

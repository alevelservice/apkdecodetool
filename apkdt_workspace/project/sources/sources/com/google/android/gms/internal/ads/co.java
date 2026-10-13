package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class co {
    @Nullable
    public static JSONObject a(ns0 ns0Var) {
        try {
            return new JSONObject(ns0Var.w);
        } catch (JSONException unused) {
            return null;
        }
    }
}

package com.mapbox.mapboxsdk.t.a;

import androidx.annotation.Nullable;
import com.google.gson.JsonArray;

/* compiled from: ConvertUtils.java */
/* loaded from: classes2.dex */
class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static JsonArray a(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        JsonArray jsonArray = new JsonArray();
        for (Float f2 : fArr) {
            jsonArray.add(f2);
        }
        return jsonArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static JsonArray a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        JsonArray jsonArray = new JsonArray();
        for (String str : strArr) {
            jsonArray.add(str);
        }
        return jsonArray;
    }
}

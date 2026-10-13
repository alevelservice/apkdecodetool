package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b4 {

    /* renamed from: a, reason: collision with root package name */
    private static final Charset f5711a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final x3<JSONObject> f5712b = new d4();

    /* renamed from: c, reason: collision with root package name */
    public static final v3<InputStream> f5713c = a4.f5510a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ InputStream a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f5711a));
    }
}

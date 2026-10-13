package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class gk {

    /* renamed from: a, reason: collision with root package name */
    public final String f6886a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f6887b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, String> f6888c;

    @TargetApi(21)
    public gk(WebResourceRequest webResourceRequest) {
        this(webResourceRequest.getUrl().toString(), webResourceRequest.getUrl(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders());
    }

    public gk(String str) {
        this(str, Uri.parse(str), null, null);
    }

    private gk(String str, Uri uri, @Nullable String str2, @Nullable Map<String, String> map) {
        this.f6886a = str;
        this.f6887b = uri;
        this.f6888c = map == null ? Collections.emptyMap() : map;
    }
}

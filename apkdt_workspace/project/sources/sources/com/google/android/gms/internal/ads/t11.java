package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t11 {

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f9495d = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: a, reason: collision with root package name */
    private String f9496a = "ad.doubleclick.net";

    /* renamed from: b, reason: collision with root package name */
    private String[] f9497b = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: c, reason: collision with root package name */
    private cz0 f9498c;

    public t11(cz0 cz0Var) {
        this.f9498c = cz0Var;
    }

    private final boolean c(Uri uri) {
        if (uri != null) {
            try {
                return uri.getHost().equals(this.f9496a);
            } catch (NullPointerException unused) {
                return false;
            }
        }
        throw new NullPointerException();
    }

    public final boolean a(Uri uri) {
        if (uri != null) {
            try {
                String host = uri.getHost();
                for (String str : this.f9497b) {
                    if (host.endsWith(str)) {
                        return true;
                    }
                }
            } catch (NullPointerException unused) {
            }
            return false;
        }
        throw new NullPointerException();
    }

    @Deprecated
    public final Uri b(Uri uri, Context context) {
        return a(uri, context, null, null);
    }

    public final boolean b(Uri uri) {
        if (a(uri)) {
            for (String str : f9495d) {
                if (uri.getPath().endsWith(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final cz0 a() {
        return this.f9498c;
    }

    public final Uri a(Uri uri, Context context) {
        return a(uri, this.f9498c.a(context));
    }

    public final void a(MotionEvent motionEvent) {
        this.f9498c.a(motionEvent);
    }

    public final Uri a(Uri uri, Context context, View view, Activity activity) {
        try {
            return a(uri, this.f9498c.a(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new w31("Provided Uri is not in a valid state");
        }
    }

    private final Uri a(Uri uri, String str) {
        try {
            boolean c2 = c(uri);
            if (c2) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new w31("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new w31("Query parameter already exists: ms");
            }
            if (c2) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf(";adurl");
                if (indexOf != -1) {
                    int i2 = indexOf + 1;
                    return Uri.parse(uri2.substring(0, i2) + "dc_ms=" + str + ";" + uri2.substring(i2));
                }
                String encodedPath = uri.getEncodedPath();
                int indexOf2 = uri2.indexOf(encodedPath);
                return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri2.substring(indexOf2 + encodedPath.length()));
            }
            String uri3 = uri.toString();
            int indexOf3 = uri3.indexOf("&adurl");
            if (indexOf3 == -1) {
                indexOf3 = uri3.indexOf("?adurl");
            }
            if (indexOf3 != -1) {
                int i3 = indexOf3 + 1;
                return Uri.parse(uri3.substring(0, i3) + "ms=" + str + "&" + uri3.substring(i3));
            }
            return uri.buildUpon().appendQueryParameter("ms", str).build();
        } catch (UnsupportedOperationException unused) {
            throw new w31("Provided Uri is not in a valid state");
        }
    }
}

package com.mapbox.mapboxsdk.p;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.URLSpan;
import androidx.annotation.NonNull;
import com.mapbox.mapboxsdk.m;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: AttributionParser.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f16201a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<com.mapbox.mapboxsdk.p.a> f16202b = new LinkedHashSet();

    /* renamed from: c, reason: collision with root package name */
    private final String f16203c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f16204d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f16205e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f16206f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f16207g;

    /* compiled from: AttributionParser.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<Context> f16208a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f16209b = true;

        /* renamed from: c, reason: collision with root package name */
        private boolean f16210c = true;

        /* renamed from: d, reason: collision with root package name */
        private boolean f16211d = false;

        /* renamed from: e, reason: collision with root package name */
        private boolean f16212e = true;

        /* renamed from: f, reason: collision with root package name */
        private String[] f16213f;

        public a(@NonNull Context context) {
            this.f16208a = new WeakReference<>(context);
        }

        @NonNull
        public a a(String... strArr) {
            this.f16213f = strArr;
            return this;
        }

        @NonNull
        public a b(boolean z) {
            this.f16209b = z;
            return this;
        }

        @NonNull
        public a c(boolean z) {
            this.f16211d = z;
            return this;
        }

        private String b(String[] strArr) {
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                if (!str.isEmpty()) {
                    sb.append(str);
                }
            }
            return sb.toString();
        }

        @NonNull
        public a a(boolean z) {
            this.f16210c = z;
            return this;
        }

        @NonNull
        public d a() {
            String[] strArr = this.f16213f;
            if (strArr != null) {
                d dVar = new d(this.f16208a, b(strArr), this.f16209b, this.f16210c, this.f16211d, this.f16212e);
                dVar.b();
                return dVar;
            }
            throw new IllegalStateException("Using builder without providing attribution data");
        }
    }

    d(WeakReference<Context> weakReference, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f16201a = weakReference;
        this.f16203c = str;
        this.f16204d = z;
        this.f16205e = z2;
        this.f16206f = z3;
        this.f16207g = z4;
    }

    private boolean c(@NonNull String str) {
        return d(str) && e(str);
    }

    private void d() {
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) a(this.f16203c);
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class)) {
            b(spannableStringBuilder, uRLSpan);
        }
    }

    private boolean e(@NonNull String str) {
        return this.f16207g || !str.equals("https://www.mapbox.com/about/maps/");
    }

    @NonNull
    private String f(@NonNull String str) {
        return (this.f16205e || !str.startsWith("© ")) ? str : str.substring(2, str.length());
    }

    private String g(String str) {
        Context context = this.f16201a.get();
        return context != null ? context.getString(m.mapbox_telemetryImproveMap) : str;
    }

    @NonNull
    public Set<com.mapbox.mapboxsdk.p.a> a() {
        return this.f16202b;
    }

    protected void b() {
        d();
        c();
    }

    private void c() {
        if (this.f16206f) {
            Context context = this.f16201a.get();
            this.f16202b.add(new com.mapbox.mapboxsdk.p.a(context != null ? context.getString(m.mapbox_telemetrySettings) : "Telemetry Settings", "https://www.mapbox.com/telemetry/"));
        }
    }

    @NonNull
    public String a(boolean z) {
        StringBuilder sb = new StringBuilder(this.f16205e ? "" : "© ");
        int i2 = 0;
        for (com.mapbox.mapboxsdk.p.a aVar : this.f16202b) {
            i2++;
            sb.append(!z ? aVar.a() : aVar.b());
            if (i2 != this.f16202b.size()) {
                sb.append(" / ");
            }
        }
        return sb.toString();
    }

    private void b(@NonNull SpannableStringBuilder spannableStringBuilder, @NonNull URLSpan uRLSpan) {
        String url = uRLSpan.getURL();
        if (c(url)) {
            String a2 = a(spannableStringBuilder, uRLSpan);
            if (b(a2)) {
                a2 = g(a2);
            }
            this.f16202b.add(new com.mapbox.mapboxsdk.p.a(a2, url));
        }
    }

    private boolean d(@NonNull String str) {
        return this.f16204d || !com.mapbox.mapboxsdk.p.a.f16181c.contains(str);
    }

    @NonNull
    private String a(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan) {
        int spanStart = spannableStringBuilder.getSpanStart(uRLSpan);
        int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan);
        char[] cArr = new char[spanEnd - spanStart];
        spannableStringBuilder.getChars(spanStart, spanEnd, cArr, 0);
        return f(String.valueOf(cArr));
    }

    private boolean b(String str) {
        return str.equals("Improve this map");
    }

    private static Spanned a(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Html.fromHtml(str, 0);
        }
        return Html.fromHtml(str);
    }
}

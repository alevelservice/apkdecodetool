package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class ew1 {

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private String f6538d;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private Context f6539e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    private String f6540f;

    /* renamed from: h, reason: collision with root package name */
    private AtomicBoolean f6542h;

    /* renamed from: i, reason: collision with root package name */
    private File f6543i;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private BlockingQueue<pw1> f6535a = new ArrayBlockingQueue(100);

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private LinkedHashMap<String, String> f6536b = new LinkedHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    private Map<String, jw1> f6537c = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private final HashSet<String> f6541g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public final void a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f6539e = context;
        this.f6540f = str;
        this.f6538d = str2;
        this.f6542h = new AtomicBoolean(false);
        this.f6542h.set(((Boolean) mu1.e().a(aw1.S)).booleanValue());
        if (this.f6542h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f6543i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f6536b.put(entry.getKey(), entry.getValue());
        }
        yd.f10540a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.iw1

            /* renamed from: e, reason: collision with root package name */
            private final ew1 f7392e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7392e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7392e.a();
            }
        });
        this.f6537c.put("action", jw1.f7577b);
        this.f6537c.put("ad_format", jw1.f7577b);
        this.f6537c.put("e", jw1.f7578c);
    }

    public final void b(String str) {
        if (this.f6541g.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.f6540f);
        linkedHashMap.put("ue", str);
        a(a(this.f6536b, linkedHashMap), "");
    }

    public final boolean a(pw1 pw1Var) {
        return this.f6535a.offer(pw1Var);
    }

    private final void a(Map<String, String> map, String str) {
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.f6538d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(buildUpon.build().toString());
        if (!TextUtils.isEmpty(str)) {
            sb.append("&it=");
            sb.append(str);
        }
        String sb2 = sb.toString();
        if (this.f6542h.get()) {
            File file = this.f6543i;
            if (file != null) {
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream.write(sb2.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                        return;
                    } catch (IOException e3) {
                        qd.c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                        return;
                    }
                } catch (IOException e4) {
                    e = e4;
                    fileOutputStream2 = fileOutputStream;
                    qd.c("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            return;
                        } catch (IOException e5) {
                            qd.c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e6) {
                            qd.c("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                        }
                    }
                    throw th;
                }
            }
            qd.d("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        com.google.android.gms.ads.internal.n.c();
        wa.a(this.f6539e, this.f6540f, sb2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, String> a(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, a(key).a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final jw1 a(String str) {
        jw1 jw1Var = this.f6537c.get(str);
        return jw1Var != null ? jw1Var : jw1.f7576a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a() {
        while (true) {
            try {
                pw1 take = this.f6535a.take();
                String a2 = take.a();
                if (!TextUtils.isEmpty(a2)) {
                    a(a(this.f6536b, take.b()), a2);
                }
            } catch (InterruptedException e2) {
                qd.c("CsiReporter:reporter interrupted", e2);
                return;
            }
        }
    }
}

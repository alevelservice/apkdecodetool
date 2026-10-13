package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.ej;
import com.google.android.gms.internal.ads.fj;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.nj;
import com.google.android.gms.internal.ads.pj;
import java.net.URISyntaxException;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t0<T extends fj & ej & ij & nj & pj> implements o0<T> {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.a f9470a;

    /* renamed from: b, reason: collision with root package name */
    private final a6 f9471b;

    public t0(com.google.android.gms.ads.internal.a aVar, a6 a6Var) {
        this.f9470a = aVar;
        this.f9471b = a6Var;
    }

    private static boolean a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            com.google.android.gms.ads.internal.n.e();
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            com.google.android.gms.ads.internal.n.e();
            return 6;
        }
        if ("c".equalsIgnoreCase(str)) {
            return com.google.android.gms.ads.internal.n.e().a();
        }
        return -1;
    }

    private final void a(boolean z) {
        a6 a6Var = this.f9471b;
        if (a6Var != null) {
            a6Var.a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static String a(Context context, t11 t11Var, String str, View view, @Nullable Activity activity) {
        if (t11Var == null) {
            return str;
        }
        try {
            Uri parse = Uri.parse(str);
            if (t11Var.b(parse)) {
                parse = t11Var.a(parse, context, view, activity);
            }
            return parse.toString();
        } catch (w31 unused) {
            return str;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "OpenGmsgHandler.maybeAddClickSignalsToUrl");
            return str;
        }
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(Object obj, Map map) {
        fj fjVar = (fj) obj;
        String a2 = p9.a((String) map.get("u"), fjVar.getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            qd.d("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.a aVar = this.f9470a;
        if (aVar != null && !aVar.b()) {
            this.f9470a.a(a2);
            return;
        }
        if ("expand".equalsIgnoreCase(str)) {
            if (((ej) fjVar).zzzd()) {
                qd.d("Cannot expand WebView that is already expanded.");
                return;
            } else {
                a(false);
                ((ij) fjVar).zzc(a((Map<String, String>) map), b(map));
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str)) {
            a(false);
            if (a2 != null) {
                ((ij) fjVar).zza(a((Map<String, String>) map), b(map), a2);
                return;
            } else {
                ((ij) fjVar).zza(a((Map<String, String>) map), b(map), (String) map.get("html"), (String) map.get("baseurl"));
                return;
            }
        }
        if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            a(true);
            if (TextUtils.isEmpty(a2)) {
                qd.d("Destination url cannot be empty.");
                return;
            }
            try {
                ((ij) fjVar).zza(new zzb(new w0(fjVar.getContext(), ((nj) fjVar).zzzb(), ((pj) fjVar).getView()).a((Map<String, String>) map)));
                return;
            } catch (ActivityNotFoundException e2) {
                qd.d(e2.getMessage());
                return;
            }
        }
        a(true);
        String str2 = (String) map.get("intent_url");
        Intent intent = null;
        if (!TextUtils.isEmpty(str2)) {
            try {
                intent = Intent.parseUri(str2, 0);
            } catch (URISyntaxException e3) {
                String valueOf = String.valueOf(str2);
                qd.b(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e3);
            }
        }
        if (intent != null && intent.getData() != null) {
            Uri data = intent.getData();
            String uri = data.toString();
            if (!TextUtils.isEmpty(uri)) {
                try {
                    uri = a(fjVar.getContext(), ((nj) fjVar).zzzb(), uri, ((pj) fjVar).getView(), fjVar.zzxl());
                } catch (Exception e4) {
                    qd.b("Error occurred while adding signals.", e4);
                    com.google.android.gms.ads.internal.n.g().a(e4, "OpenGmsgHandler.onGmsg");
                }
                try {
                    data = Uri.parse(uri);
                } catch (Exception e5) {
                    String valueOf2 = String.valueOf(uri);
                    qd.b(valueOf2.length() != 0 ? "Error parsing the uri: ".concat(valueOf2) : new String("Error parsing the uri: "), e5);
                    com.google.android.gms.ads.internal.n.g().a(e5, "OpenGmsgHandler.onGmsg");
                }
            }
            intent.setData(data);
        }
        if (intent != null) {
            ((ij) fjVar).zza(new zzb(intent));
            return;
        }
        if (!TextUtils.isEmpty(a2)) {
            a2 = a(fjVar.getContext(), ((nj) fjVar).zzzb(), a2, ((pj) fjVar).getView(), fjVar.zzxl());
        }
        ((ij) fjVar).zza(new zzb((String) map.get("i"), a2, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
    }
}

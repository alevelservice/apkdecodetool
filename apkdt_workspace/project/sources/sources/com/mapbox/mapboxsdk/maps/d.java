package com.mapbox.mapboxsdk.maps;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.p.d;
import com.mapbox.mapboxsdk.style.sources.Source;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: AttributionDialogManager.java */
/* loaded from: classes2.dex */
public class d implements View.OnClickListener, DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    private final Context f16023e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final n f16024f;

    /* renamed from: g, reason: collision with root package name */
    private Set<com.mapbox.mapboxsdk.p.a> f16025g;

    /* renamed from: h, reason: collision with root package name */
    private AlertDialog f16026h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AttributionDialogManager.java */
    /* loaded from: classes2.dex */
    public class a implements DialogInterface.OnClickListener {
        a(d dVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(@NonNull DialogInterface dialogInterface, int i2) {
            z telemetry = Mapbox.getTelemetry();
            if (telemetry != null) {
                telemetry.setUserTelemetryRequestState(true);
            }
            dialogInterface.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AttributionDialogManager.java */
    /* loaded from: classes2.dex */
    public class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(@NonNull DialogInterface dialogInterface, int i2) {
            d dVar = d.this;
            dVar.b(dVar.f16023e.getResources().getString(com.mapbox.mapboxsdk.m.mapbox_telemetryLink));
            dialogInterface.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AttributionDialogManager.java */
    /* loaded from: classes2.dex */
    public class c implements DialogInterface.OnClickListener {
        c(d dVar) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(@NonNull DialogInterface dialogInterface, int i2) {
            z telemetry = Mapbox.getTelemetry();
            if (telemetry != null) {
                telemetry.setUserTelemetryRequestState(false);
            }
            dialogInterface.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AttributionDialogManager.java */
    /* renamed from: com.mapbox.mapboxsdk.maps.d$d, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0158d {

        /* renamed from: a, reason: collision with root package name */
        private final n f16028a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private final WeakReference<Context> f16029b;

        C0158d(n nVar, Context context) {
            this.f16028a = nVar;
            this.f16029b = new WeakReference<>(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Set<com.mapbox.mapboxsdk.p.a> a() {
            Context context = this.f16029b.get();
            if (context == null) {
                return Collections.emptySet();
            }
            ArrayList arrayList = new ArrayList();
            Style m = this.f16028a.m();
            if (m != null) {
                Iterator<Source> it = m.c().iterator();
                while (it.hasNext()) {
                    String attribution = it.next().getAttribution();
                    if (!attribution.isEmpty()) {
                        arrayList.add(attribution);
                    }
                }
            }
            d.a aVar = new d.a(context);
            aVar.a(true);
            aVar.b(true);
            aVar.c(true);
            aVar.a((String[]) arrayList.toArray(new String[arrayList.size()]));
            return aVar.a().a();
        }
    }

    public d(@NonNull Context context, @NonNull n nVar) {
        this.f16023e = context;
        this.f16024f = nVar;
    }

    private String[] b() {
        ArrayList arrayList = new ArrayList();
        Iterator<com.mapbox.mapboxsdk.p.a> it = this.f16025g.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private void c() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f16023e);
        builder.setTitle(com.mapbox.mapboxsdk.m.mapbox_attributionTelemetryTitle);
        builder.setMessage(com.mapbox.mapboxsdk.m.mapbox_attributionTelemetryMessage);
        builder.setPositiveButton(com.mapbox.mapboxsdk.m.mapbox_attributionTelemetryPositive, new a(this));
        builder.setNeutralButton(com.mapbox.mapboxsdk.m.mapbox_attributionTelemetryNeutral, new b());
        builder.setNegativeButton(com.mapbox.mapboxsdk.m.mapbox_attributionTelemetryNegative, new c(this));
        builder.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NonNull View view) {
        this.f16025g = new C0158d(this.f16024f, view.getContext()).a();
        Context context = this.f16023e;
        if (context instanceof Activity ? ((Activity) context).isFinishing() : false) {
            return;
        }
        a(b());
    }

    protected void a(@NonNull String[] strArr) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f16023e);
        builder.setTitle(com.mapbox.mapboxsdk.m.mapbox_attributionsDialogTitle);
        builder.setAdapter(new ArrayAdapter(this.f16023e, com.mapbox.mapboxsdk.l.mapbox_attribution_list_item, strArr), this);
        this.f16026h = builder.show();
    }

    private void b(int i2) {
        Set<com.mapbox.mapboxsdk.p.a> set = this.f16025g;
        String c2 = ((com.mapbox.mapboxsdk.p.a[]) set.toArray(new com.mapbox.mapboxsdk.p.a[set.size()]))[i2].c();
        if (c2.contains("https://www.mapbox.com/map-feedback") || c2.contains("https://apps.mapbox.com/feedback")) {
            c2 = a(Mapbox.getAccessToken());
        }
        b(c2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        if (a(i2)) {
            c();
        } else {
            b(i2);
        }
    }

    public void a() {
        AlertDialog alertDialog = this.f16026h;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        this.f16026h.dismiss();
    }

    private boolean a(int i2) {
        return i2 == b().length - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@NonNull String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            this.f16023e.startActivity(intent);
        } catch (ActivityNotFoundException e2) {
            Toast.makeText(this.f16023e, com.mapbox.mapboxsdk.m.mapbox_attributionErrorNoBrowser, 1).show();
            com.mapbox.mapboxsdk.d.a(e2);
        }
    }

    @NonNull
    String a(@Nullable String str) {
        Uri.Builder buildUpon = Uri.parse("https://apps.mapbox.com/feedback").buildUpon();
        CameraPosition b2 = this.f16024f.b();
        if (b2 != null) {
            buildUpon.encodedFragment(String.format(Locale.getDefault(), "/%f/%f/%f/%f/%d", Double.valueOf(b2.target.b()), Double.valueOf(b2.target.a()), Double.valueOf(b2.zoom), Double.valueOf(b2.bearing), Integer.valueOf((int) b2.tilt)));
        }
        String packageName = this.f16023e.getApplicationContext().getPackageName();
        if (packageName != null) {
            buildUpon.appendQueryParameter("referrer", packageName);
        }
        if (str != null) {
            buildUpon.appendQueryParameter("access_token", str);
        }
        Style m = this.f16024f.m();
        if (m != null) {
            Matcher matcher = Pattern.compile("^(.*://[^:^/]*)/(.*)/(.*)").matcher(m.d());
            if (matcher.find()) {
                buildUpon.appendQueryParameter("owner", matcher.group(2)).appendQueryParameter("id", matcher.group(3));
            }
        }
        return buildUpon.build().toString();
    }
}

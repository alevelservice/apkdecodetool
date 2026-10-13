package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xb implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ Context f10302e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f10303f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ boolean f10304g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ boolean f10305h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xb(ub ubVar, Context context, String str, boolean z, boolean z2) {
        this.f10302e = context;
        this.f10303f = str;
        this.f10304g = z;
        this.f10305h = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f10302e);
        builder.setMessage(this.f10303f);
        if (this.f10304g) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.f10305h) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new wb(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}

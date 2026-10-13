package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e6 implements DialogInterface.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f6340e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f6341f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ f6 f6342g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e6(f6 f6Var, String str, String str2) {
        this.f6342g = f6Var;
        this.f6340e = str;
        this.f6341f = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Context context;
        context = this.f6342g.f6568d;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.f6340e;
            String str2 = this.f6341f;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            com.google.android.gms.ads.internal.n.e();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.f6342g.a("Could not store picture.");
        }
    }
}

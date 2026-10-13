package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public interface t20 extends View.OnClickListener, View.OnTouchListener {
    void zza(String str, View view, boolean z);

    View zzaer();

    Map<String, WeakReference<View>> zzaik();

    Map<String, WeakReference<View>> zzail();

    Map<String, WeakReference<View>> zzaim();

    String zzain();

    FrameLayout zzaio();

    bq1 zzaip();

    IObjectWrapper zzaiq();

    View zzfw(String str);
}

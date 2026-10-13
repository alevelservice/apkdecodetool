package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public interface u10 {
    void a();

    void a(Bundle bundle);

    void a(View view);

    void a(@Nullable View view, MotionEvent motionEvent, View view2);

    void a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void a(View view, Map<String, WeakReference<View>> map);

    void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener);

    void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void a(String str);

    void b();

    void b(Bundle bundle);

    void c();

    boolean c(Bundle bundle);

    void cancelUnconfirmedClick();

    void destroy();

    boolean isCustomClickGestureEnabled();

    void zza(zzacl zzaclVar);

    void zza(zzvx zzvxVar);

    void zza(@Nullable zzwb zzwbVar);

    void zzqs();
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class m6 {

    /* renamed from: b, reason: collision with root package name */
    private static final Object f8027b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    private static boolean f8028c = false;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("lock")
    private static boolean f8029d = false;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private zzcxz f8030a;

    @VisibleForTesting
    private final void c(Context context) {
        synchronized (f8027b) {
            if (((Boolean) mu1.e().a(aw1.P2)).booleanValue() && !f8029d) {
                try {
                    f8029d = true;
                    this.f8030a = (zzcxz) td.a(context, "com.google.android.gms.ads.omid.DynamiteOmid", o6.f8481a);
                } catch (vd e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    @Nullable
    public final String a(Context context) {
        if (!((Boolean) mu1.e().a(aw1.P2)).booleanValue()) {
            return null;
        }
        try {
            c(context);
            String valueOf = String.valueOf(this.f8030a.getVersion());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e2) {
            qd.d("#007 Could not call remote method.", e2);
            return null;
        }
    }

    public final boolean b(Context context) {
        synchronized (f8027b) {
            if (!((Boolean) mu1.e().a(aw1.P2)).booleanValue()) {
                return false;
            }
            if (f8028c) {
                return true;
            }
            try {
                c(context);
                boolean zzau = this.f8030a.zzau(ObjectWrapper.wrap(context));
                f8028c = zzau;
                return zzau;
            } catch (RemoteException e2) {
                e = e2;
                qd.d("#007 Could not call remote method.", e);
                return false;
            } catch (NullPointerException e3) {
                e = e3;
                qd.d("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Nullable
    public final IObjectWrapper a(String str, WebView webView, String str2, String str3, String str4) {
        return a(str, webView, str2, str3, str4, "Google");
    }

    @Nullable
    public final IObjectWrapper a(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (f8027b) {
            try {
                try {
                    if (((Boolean) mu1.e().a(aw1.P2)).booleanValue() && f8028c) {
                        try {
                            return this.f8030a.zza(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e2) {
                            qd.d("#007 Could not call remote method.", e2);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public final void b(IObjectWrapper iObjectWrapper) {
        synchronized (f8027b) {
            if (((Boolean) mu1.e().a(aw1.P2)).booleanValue() && f8028c) {
                try {
                    this.f8030a.zzaf(iObjectWrapper);
                } catch (RemoteException | NullPointerException e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final void a(IObjectWrapper iObjectWrapper) {
        synchronized (f8027b) {
            if (((Boolean) mu1.e().a(aw1.P2)).booleanValue() && f8028c) {
                try {
                    this.f8030a.zzae(iObjectWrapper);
                } catch (RemoteException | NullPointerException e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final void b(IObjectWrapper iObjectWrapper, View view) {
        synchronized (f8027b) {
            if (((Boolean) mu1.e().a(aw1.P2)).booleanValue() && f8028c) {
                try {
                    this.f8030a.zze(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
        }
    }

    public final void a(IObjectWrapper iObjectWrapper, View view) {
        synchronized (f8027b) {
            if (((Boolean) mu1.e().a(aw1.P2)).booleanValue() && f8028c) {
                try {
                    this.f8030a.zzd(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
        }
    }
}

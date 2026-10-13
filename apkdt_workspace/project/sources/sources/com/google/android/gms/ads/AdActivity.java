package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.zzamu;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class AdActivity extends Activity {

    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";

    @KeepForSdk
    public static final String SIMPLE_CLASS_NAME = "AdActivity";

    /* renamed from: e, reason: collision with root package name */
    private zzamu f4454e;

    private final void a() {
        zzamu zzamuVar = this.f4454e;
        if (zzamuVar != null) {
            try {
                zzamuVar.zzcz();
            } catch (RemoteException e2) {
                qd.d("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i2, int i3, Intent intent) {
        try {
            this.f4454e.onActivityResult(i2, i3, intent);
        } catch (Exception e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
        super.onActivityResult(i2, i3, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z = true;
        try {
            if (this.f4454e != null) {
                z = this.f4454e.zzsl();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
        if (z) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.f4454e.zzag(ObjectWrapper.wrap(configuration));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f4454e = mu1.b().a(this);
        zzamu zzamuVar = this.f4454e;
        if (zzamuVar == null) {
            qd.d("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzamuVar.onCreate(bundle);
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            if (this.f4454e != null) {
                this.f4454e.onDestroy();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            if (this.f4454e != null) {
                this.f4454e.onPause();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            if (this.f4454e != null) {
                this.f4454e.onRestart();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            if (this.f4454e != null) {
                this.f4454e.onResume();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.f4454e != null) {
                this.f4454e.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            if (this.f4454e != null) {
                this.f4454e.onStart();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            if (this.f4454e != null) {
                this.f4454e.onStop();
            }
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void setContentView(int i2) {
        super.setContentView(i2);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        a();
    }
}

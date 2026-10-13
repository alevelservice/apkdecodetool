package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepName
/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private int f4985e = 0;

    public static PendingIntent zaa(Context context, PendingIntent pendingIntent, int i2) {
        return PendingIntent.getActivity(context, 0, zaa(context, pendingIntent, i2, true), 134217728);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f4985e = 0;
            setResult(i3, intent);
            if (booleanExtra) {
                com.google.android.gms.common.api.internal.g a2 = com.google.android.gms.common.api.internal.g.a(this);
                if (i3 == -1) {
                    a2.b();
                } else if (i3 == 0) {
                    a2.a(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i2 == 2) {
            this.f4985e = 0;
            setResult(i3, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f4985e = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f4985e = bundle.getInt("resolution");
        }
        if (this.f4985e != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                finish();
                return;
            }
            if (pendingIntent != null) {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.f4985e = 1;
                    return;
                } catch (IntentSender.SendIntentException unused) {
                    finish();
                    return;
                }
            }
            com.google.android.gms.common.c.a().b(this, num.intValue(), 2, this);
            this.f4985e = 1;
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f4985e);
        super.onSaveInstanceState(bundle);
    }

    public static Intent zaa(Context context, PendingIntent pendingIntent, int i2, boolean z) {
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i2);
        intent.putExtra("notify_manager", z);
        return intent;
    }
}

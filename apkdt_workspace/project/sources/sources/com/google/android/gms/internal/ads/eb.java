package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(17)
/* loaded from: classes.dex */
public class eb extends db {
    public eb() {
        super();
    }

    @Override // com.google.android.gms.internal.ads.db
    public final boolean a(Context context, WebSettings webSettings) {
        super.a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.db
    public final void b(Context context) {
        ad a2 = ad.a();
        na.e("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(a2.f5561a)) {
            Context b2 = com.google.android.gms.common.h.b(context);
            if (com.google.android.gms.common.util.d.a() || b2 == null) {
                SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (b2 == null) {
                    putString.apply();
                } else {
                    com.google.android.gms.common.util.r.a(context, putString, "admob_user_agent");
                    throw null;
                }
            }
            a2.f5561a = defaultUserAgent;
        }
        na.e("User agent is updated.");
    }

    @Override // com.google.android.gms.internal.ads.db
    public final String a(Context context) {
        String str;
        ad a2 = ad.a();
        if (TextUtils.isEmpty(a2.f5561a)) {
            if (com.google.android.gms.common.util.d.a()) {
                str = (String) xc.a(context, new zc(a2, context));
            } else {
                str = (String) xc.a(context, new dd(a2, com.google.android.gms.common.h.b(context), context));
            }
            a2.f5561a = str;
        }
        return a2.f5561a;
    }

    @Override // com.google.android.gms.internal.ads.db
    public final Drawable a(Context context, Bitmap bitmap, boolean z, float f2) {
        if (z && f2 > 0.0f && f2 <= 25.0f) {
            try {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                RenderScript create = RenderScript.create(context);
                ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                create2.setRadius(f2);
                create2.setInput(createFromBitmap);
                create2.forEach(createFromBitmap2);
                createFromBitmap2.copyTo(createBitmap);
                return new BitmapDrawable(context.getResources(), createBitmap);
            } catch (RuntimeException unused) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
        }
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    @Override // com.google.android.gms.internal.ads.db
    public final int b(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.db
    public final int a(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }
}

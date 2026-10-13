package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("sCache")
    private static final a.e.g<String, String> f5294a = new a.e.g<>();

    @NonNull
    public static String a(Context context, int i2) {
        Resources resources = context.getResources();
        if (i2 == 1) {
            return resources.getString(e.i.b.b.a.c.common_google_play_services_install_button);
        }
        if (i2 == 2) {
            return resources.getString(e.i.b.b.a.c.common_google_play_services_update_button);
        }
        if (i2 != 3) {
            return resources.getString(R.string.ok);
        }
        return resources.getString(e.i.b.b.a.c.common_google_play_services_enable_button);
    }

    @NonNull
    public static String b(Context context, int i2) {
        Resources resources = context.getResources();
        String a2 = a(context);
        if (i2 == 1) {
            return resources.getString(e.i.b.b.a.c.common_google_play_services_install_text, a2);
        }
        if (i2 == 2) {
            return com.google.android.gms.common.util.i.d(context) ? resources.getString(e.i.b.b.a.c.common_google_play_services_wear_update_text) : resources.getString(e.i.b.b.a.c.common_google_play_services_update_text, a2);
        }
        if (i2 == 3) {
            return resources.getString(e.i.b.b.a.c.common_google_play_services_enable_text, a2);
        }
        if (i2 == 5) {
            return a(context, "common_google_play_services_invalid_account_text", a2);
        }
        if (i2 == 7) {
            return a(context, "common_google_play_services_network_error_text", a2);
        }
        if (i2 == 9) {
            return resources.getString(e.i.b.b.a.c.common_google_play_services_unsupported_text, a2);
        }
        if (i2 != 20) {
            switch (i2) {
                case 16:
                    return a(context, "common_google_play_services_api_unavailable_text", a2);
                case 17:
                    return a(context, "common_google_play_services_sign_in_failed_text", a2);
                case 18:
                    return resources.getString(e.i.b.b.a.c.common_google_play_services_updating_text, a2);
                default:
                    return resources.getString(com.google.android.gms.common.j.common_google_play_services_unknown_issue, a2);
            }
        }
        return a(context, "common_google_play_services_restricted_profile_text", a2);
    }

    @NonNull
    public static String c(Context context, int i2) {
        if (i2 != 6 && i2 != 19) {
            return b(context, i2);
        }
        return a(context, "common_google_play_services_resolution_required_text", a(context));
    }

    @NonNull
    public static String d(Context context, int i2) {
        String e2;
        if (i2 == 6) {
            e2 = a(context, "common_google_play_services_resolution_required_title");
        } else {
            e2 = e(context, i2);
        }
        return e2 == null ? context.getResources().getString(e.i.b.b.a.c.common_google_play_services_notification_ticker) : e2;
    }

    @Nullable
    public static String e(Context context, int i2) {
        Resources resources = context.getResources();
        switch (i2) {
            case 1:
                return resources.getString(e.i.b.b.a.c.common_google_play_services_install_title);
            case 2:
                return resources.getString(e.i.b.b.a.c.common_google_play_services_update_title);
            case 3:
                return resources.getString(e.i.b.b.a.c.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                return a(context, "common_google_play_services_invalid_account_title");
            case 7:
                return a(context, "common_google_play_services_network_error_title");
            case 8:
            case 9:
            case 10:
            case 11:
            case 16:
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i2);
                sb.toString();
                return null;
            case 17:
                return a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                return a(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return com.google.android.gms.common.o.c.a(context).b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    private static String a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a2 = a(context, str);
        if (a2 == null) {
            a2 = resources.getString(com.google.android.gms.common.j.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, a2, str2);
    }

    @Nullable
    private static String a(Context context, String str) {
        synchronized (f5294a) {
            String str2 = f5294a.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources c2 = com.google.android.gms.common.g.c(context);
            if (c2 == null) {
                return null;
            }
            int identifier = c2.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "Missing resource: ".concat(valueOf);
                } else {
                    new String("Missing resource: ");
                }
                return null;
            }
            String string = c2.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Got empty resource: ".concat(valueOf2);
                } else {
                    new String("Got empty resource: ");
                }
                return null;
            }
            f5294a.put(str, string);
            return string;
        }
    }

    public static String b(Context context) {
        return context.getResources().getString(e.i.b.b.a.c.common_google_play_services_notification_channel_name);
    }
}

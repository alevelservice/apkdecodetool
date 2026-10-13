package com.google.android.gms.auth.api.phone;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public interface SmsCodeAutofillClient extends g<a.d.C0086d> {

    /* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
    @Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface PermissionState {
        public static final int DENIED = 2;
        public static final int GRANTED = 1;
        public static final int NONE = 0;
    }
}

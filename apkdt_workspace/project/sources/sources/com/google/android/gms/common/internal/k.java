package com.google.android.gms.common.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class k {

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<String> f5322a;

        /* renamed from: b, reason: collision with root package name */
        private final Object f5323b;

        private a(Object obj) {
            m.a(obj);
            this.f5323b = obj;
            this.f5322a = new ArrayList();
        }

        @KeepForSdk
        public final a a(String str, @Nullable Object obj) {
            List<String> list = this.f5322a;
            m.a(str);
            String str2 = str;
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length());
            sb.append(str2);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @KeepForSdk
        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f5323b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f5322a.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append(this.f5322a.get(i2));
                if (i2 < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    @KeepForSdk
    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    @KeepForSdk
    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @KeepForSdk
    public static a a(Object obj) {
        return new a(obj);
    }
}

package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.internal.g5;
import com.google.android.gms.measurement.internal.h6;
import com.google.android.gms.measurement.internal.j4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@ShowFirstParty
@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {

    /* renamed from: d, reason: collision with root package name */
    private static volatile AppMeasurement f12725d;

    /* renamed from: a, reason: collision with root package name */
    private final j4 f12726a;

    /* renamed from: b, reason: collision with root package name */
    private final h6 f12727b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f12728c;

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class ConditionalUserProperty {

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public boolean mActive;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mAppId;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mName;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mOrigin;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mTriggerEventName;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggeredTimestamp;

        @ShowFirstParty
        @Keep
        @KeepForSdk
        public Object mValue;

        @KeepForSdk
        public ConditionalUserProperty() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString("name", str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                g5.a(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString("trigger_event_name", str4);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString("timed_out_event_name", str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString("triggered_event_name", str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString("expired_event_name", str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }

        private ConditionalUserProperty(@NonNull Bundle bundle) {
            m.a(bundle);
            this.mAppId = (String) g5.a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) g5.a(bundle, "origin", String.class, null);
            this.mName = (String) g5.a(bundle, "name", String.class, null);
            this.mValue = g5.a(bundle, HummerConstants.VALUE, Object.class, null);
            this.mTriggerEventName = (String) g5.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) g5.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) g5.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) g5.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) g5.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) g5.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) g5.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) g5.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) g5.a(bundle, "expired_event_params", Bundle.class, null);
        }
    }

    private AppMeasurement(j4 j4Var) {
        m.a(j4Var);
        this.f12726a = j4Var;
        this.f12727b = null;
        this.f12728c = false;
    }

    @VisibleForTesting
    private static AppMeasurement a(Context context, String str, String str2) {
        if (f12725d == null) {
            synchronized (AppMeasurement.class) {
                if (f12725d == null) {
                    h6 a2 = a(context, null);
                    if (a2 != null) {
                        f12725d = new AppMeasurement(a2);
                    } else {
                        f12725d = new AppMeasurement(j4.a(context, null, null, null));
                    }
                }
            }
        }
        return f12725d;
    }

    @Keep
    @Deprecated
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @ShowFirstParty
    public static AppMeasurement getInstance(Context context) {
        return a(context, null, null);
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        if (this.f12728c) {
            this.f12727b.beginAdUnitExposure(str);
        } else {
            this.f12726a.u().a(str, this.f12726a.a().c());
        }
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        if (this.f12728c) {
            this.f12727b.clearConditionalUserProperty(str, str2, bundle);
        } else {
            this.f12726a.v().a(str, str2, bundle);
        }
    }

    @VisibleForTesting
    @Keep
    protected void clearConditionalUserPropertyAs(@NonNull @Size(min = 1) String str, @NonNull @Size(max = 24, min = 1) String str2, @Nullable String str3, @Nullable Bundle bundle) {
        if (this.f12728c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f12726a.v().a(str, str2, str3, bundle);
        throw null;
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        if (this.f12728c) {
            this.f12727b.endAdUnitExposure(str);
        } else {
            this.f12726a.u().b(str, this.f12726a.a().c());
        }
    }

    @Keep
    public long generateEventId() {
        if (this.f12728c) {
            return this.f12727b.generateEventId();
        }
        return this.f12726a.D().q();
    }

    @Nullable
    @Keep
    public String getAppInstanceId() {
        if (this.f12728c) {
            return this.f12727b.a();
        }
        return this.f12726a.v().B();
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        List<Bundle> b2;
        if (this.f12728c) {
            b2 = this.f12727b.getConditionalUserProperties(str, str2);
        } else {
            b2 = this.f12726a.v().b(str, str2);
        }
        ArrayList arrayList = new ArrayList(b2 == null ? 0 : b2.size());
        Iterator<Bundle> it = b2.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty(it.next()));
        }
        return arrayList;
    }

    @VisibleForTesting
    @Keep
    @WorkerThread
    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(@NonNull @Size(min = 1) String str, @Nullable String str2, @Nullable @Size(max = 23, min = 1) String str3) {
        if (this.f12728c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f12726a.v().a(str, str2, str3);
        throw null;
    }

    @Nullable
    @Keep
    public String getCurrentScreenClass() {
        if (this.f12728c) {
            return this.f12727b.getCurrentScreenClass();
        }
        return this.f12726a.v().y();
    }

    @Nullable
    @Keep
    public String getCurrentScreenName() {
        if (this.f12728c) {
            return this.f12727b.getCurrentScreenName();
        }
        return this.f12726a.v().z();
    }

    @Nullable
    @Keep
    public String getGmpAppId() {
        if (this.f12728c) {
            return this.f12727b.getGmpAppId();
        }
        return this.f12726a.v().A();
    }

    @Keep
    @ShowFirstParty
    @KeepForSdk
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        if (this.f12728c) {
            return this.f12727b.getMaxUserProperties(str);
        }
        this.f12726a.v();
        m.b(str);
        return 25;
    }

    @VisibleForTesting
    @Keep
    @WorkerThread
    protected Map<String, Object> getUserProperties(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        if (this.f12728c) {
            return this.f12727b.getUserProperties(str, str2, z);
        }
        return this.f12726a.v().a(str, str2, z);
    }

    @VisibleForTesting
    @Keep
    @WorkerThread
    protected Map<String, Object> getUserPropertiesAs(@NonNull @Size(min = 1) String str, @Nullable String str2, @Nullable @Size(max = 23, min = 1) String str3, boolean z) {
        if (this.f12728c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f12726a.v().a(str, str2, str3, z);
        throw null;
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.f12728c) {
            this.f12727b.a(str, str2, bundle);
        } else {
            this.f12726a.v().b(str, str2, bundle);
        }
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        m.a(conditionalUserProperty);
        if (this.f12728c) {
            this.f12727b.setConditionalUserProperty(conditionalUserProperty.a());
        } else {
            this.f12726a.v().a(conditionalUserProperty.a());
        }
    }

    @VisibleForTesting
    @Keep
    protected void setConditionalUserPropertyAs(@NonNull ConditionalUserProperty conditionalUserProperty) {
        m.a(conditionalUserProperty);
        if (this.f12728c) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.f12726a.v().b(conditionalUserProperty.a());
        throw null;
    }

    private AppMeasurement(h6 h6Var) {
        m.a(h6Var);
        this.f12727b = h6Var;
        this.f12726a = null;
        this.f12728c = true;
    }

    private static h6 a(Context context, Bundle bundle) {
        try {
            return (h6) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, bundle);
        } catch (ClassNotFoundException | Exception unused) {
            return null;
        }
    }
}

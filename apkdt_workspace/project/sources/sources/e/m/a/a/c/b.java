package e.m.a.a.c;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: CrashReportBuilder.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f18020a;

    /* renamed from: b, reason: collision with root package name */
    private final String f18021b;

    /* renamed from: c, reason: collision with root package name */
    private final String f18022c;

    /* renamed from: d, reason: collision with root package name */
    private final List<Throwable> f18023d = new ArrayList(4);

    /* renamed from: e, reason: collision with root package name */
    private Thread f18024e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f18025f;

    private b(Context context, String str, String str2) {
        this.f18020a = context;
        this.f18021b = str;
        this.f18022c = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(Context context, String str, String str2) {
        return new b(context, str, str2);
    }

    @NonNull
    @VisibleForTesting
    static String c(@NonNull List<Throwable> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<Throwable> it = list.iterator();
        while (it.hasNext()) {
            for (StackTraceElement stackTraceElement : it.next().getStackTrace()) {
                sb.append(stackTraceElement.getClassName());
                sb.append(stackTraceElement.getMethodName());
            }
        }
        return Integer.toHexString(sb.toString().hashCode());
    }

    @NonNull
    @VisibleForTesting
    String b(@NonNull List<Throwable> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<Throwable> it = list.iterator();
        while (it.hasNext()) {
            for (StackTraceElement stackTraceElement : it.next().getStackTrace()) {
                if (stackTraceElement.getClassName().startsWith(this.f18021b)) {
                    sb.append(String.format(Locale.US, "%s.%s(%s:%d)", stackTraceElement.getClassName(), stackTraceElement.getMethodName(), stackTraceElement.getFileName(), Integer.valueOf(stackTraceElement.getLineNumber())));
                    sb.append('\n');
                }
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(@NonNull List<Throwable> list) {
        this.f18023d.addAll(list);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(@NonNull Thread thread) {
        this.f18024e = thread;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a() {
        a aVar = new a(new GregorianCalendar());
        aVar.a("sdkIdentifier", this.f18021b);
        aVar.a("sdkVersion", this.f18022c);
        aVar.a("osVersion", String.format("Android-%s", Build.VERSION.RELEASE));
        aVar.a("model", Build.MODEL);
        aVar.a("device", Build.DEVICE);
        aVar.a("isSilent", Boolean.toString(this.f18025f));
        aVar.a("stackTraceHash", c(this.f18023d));
        aVar.a("stackTrace", b(this.f18023d));
        Thread thread = this.f18024e;
        if (thread != null) {
            aVar.a("threadDetails", String.format("tid:%s|name:%s|priority:%s", Long.valueOf(thread.getId()), this.f18024e.getName(), Integer.valueOf(this.f18024e.getPriority())));
        }
        aVar.a("appId", this.f18020a.getPackageName());
        aVar.a("appVersion", a(this.f18020a));
        return aVar;
    }

    @NonNull
    private static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "unknown";
        }
    }
}

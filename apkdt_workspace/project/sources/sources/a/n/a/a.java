package a.n.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* compiled from: LocalBroadcastManager.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: f, reason: collision with root package name */
    private static final Object f452f = new Object();

    /* renamed from: g, reason: collision with root package name */
    private static a f453g;

    /* renamed from: a, reason: collision with root package name */
    private final Context f454a;

    /* renamed from: b, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<c>> f455b = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    private final HashMap<String, ArrayList<c>> f456c = new HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private final ArrayList<b> f457d = new ArrayList<>();

    /* renamed from: e, reason: collision with root package name */
    private final Handler f458e;

    /* compiled from: LocalBroadcastManager.java */
    /* renamed from: a.n.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class HandlerC0018a extends Handler {
        HandlerC0018a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocalBroadcastManager.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        final Intent f460a;

        /* renamed from: b, reason: collision with root package name */
        final ArrayList<c> f461b;

        b(Intent intent, ArrayList<c> arrayList) {
            this.f460a = intent;
            this.f461b = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LocalBroadcastManager.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        final IntentFilter f462a;

        /* renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f463b;

        /* renamed from: c, reason: collision with root package name */
        boolean f464c;

        /* renamed from: d, reason: collision with root package name */
        boolean f465d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f462a = intentFilter;
            this.f463b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f463b);
            sb.append(" filter=");
            sb.append(this.f462a);
            if (this.f465d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private a(Context context) {
        this.f454a = context;
        this.f458e = new HandlerC0018a(context.getMainLooper());
    }

    @NonNull
    public static a a(@NonNull Context context) {
        a aVar;
        synchronized (f452f) {
            if (f453g == null) {
                f453g = new a(context.getApplicationContext());
            }
            aVar = f453g;
        }
        return aVar;
    }

    public void a(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.f455b) {
            c cVar = new c(intentFilter, broadcastReceiver);
            ArrayList<c> arrayList = this.f455b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f455b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(cVar);
            for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                String action = intentFilter.getAction(i2);
                ArrayList<c> arrayList2 = this.f456c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f456c.put(action, arrayList2);
                }
                arrayList2.add(cVar);
            }
        }
    }

    public void a(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.f455b) {
            ArrayList<c> remove = this.f455b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                c cVar = remove.get(size);
                cVar.f465d = true;
                for (int i2 = 0; i2 < cVar.f462a.countActions(); i2++) {
                    String action = cVar.f462a.getAction(i2);
                    ArrayList<c> arrayList = this.f456c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            c cVar2 = arrayList.get(size2);
                            if (cVar2.f463b == broadcastReceiver) {
                                cVar2.f465d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f456c.remove(action);
                        }
                    }
                }
            }
        }
    }

    public boolean a(@NonNull Intent intent) {
        String str;
        ArrayList arrayList;
        int i2;
        ArrayList<c> arrayList2;
        String str2;
        synchronized (this.f455b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f454a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                String str3 = "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent;
            }
            ArrayList<c> arrayList3 = this.f456c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z) {
                    String str4 = "Action list: " + arrayList3;
                }
                ArrayList arrayList4 = null;
                int i3 = 0;
                while (i3 < arrayList3.size()) {
                    c cVar = arrayList3.get(i3);
                    if (z) {
                        String str5 = "Matching against filter " + cVar.f462a;
                    }
                    if (cVar.f464c) {
                        i2 = i3;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = resolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        str = action;
                        arrayList = arrayList4;
                        i2 = i3;
                        arrayList2 = arrayList3;
                        str2 = resolveTypeIfNeeded;
                        int match = cVar.f462a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z) {
                                String str6 = "  Filter matched!  match=0x" + Integer.toHexString(match);
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(cVar);
                            cVar.f464c = true;
                            i3 = i2 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            resolveTypeIfNeeded = str2;
                        } else if (z) {
                            String str7 = "  Filter did not match: " + (match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : Constants$ScionAnalytics$MessageType.DATA_MESSAGE : "action" : "category");
                        }
                    }
                    arrayList4 = arrayList;
                    i3 = i2 + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    resolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i4 = 0; i4 < arrayList5.size(); i4++) {
                        ((c) arrayList5.get(i4)).f464c = false;
                    }
                    this.f457d.add(new b(intent, arrayList5));
                    if (!this.f458e.hasMessages(1)) {
                        this.f458e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    void a() {
        b[] bVarArr;
        while (true) {
            synchronized (this.f455b) {
                int size = this.f457d.size();
                if (size <= 0) {
                    return;
                }
                bVarArr = new b[size];
                this.f457d.toArray(bVarArr);
                this.f457d.clear();
            }
            for (b bVar : bVarArr) {
                int size2 = bVar.f461b.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    c cVar = bVar.f461b.get(i2);
                    if (!cVar.f465d) {
                        cVar.f463b.onReceive(this.f454a, bVar.f460a);
                    }
                }
            }
        }
    }
}

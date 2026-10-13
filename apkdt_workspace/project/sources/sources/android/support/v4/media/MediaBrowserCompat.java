package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: b, reason: collision with root package name */
    static final boolean f555b = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: a, reason: collision with root package name */
    private final e f556a;

    /* loaded from: classes.dex */
    private static class CustomActionResultReceiver extends ResultReceiver {

        /* renamed from: h, reason: collision with root package name */
        private final String f557h;

        /* renamed from: i, reason: collision with root package name */
        private final Bundle f558i;

        /* renamed from: j, reason: collision with root package name */
        private final c f559j;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i2, Bundle bundle) {
            if (this.f559j == null) {
                return;
            }
            MediaSessionCompat.a(bundle);
            if (i2 == -1) {
                this.f559j.a(this.f557h, this.f558i, bundle);
                return;
            }
            if (i2 == 0) {
                this.f559j.c(this.f557h, this.f558i, bundle);
                return;
            }
            if (i2 != 1) {
                String str = "Unknown result code: " + i2 + " (extras=" + this.f558i + ", resultData=" + bundle + ")";
                return;
            }
            this.f559j.b(this.f557h, this.f558i, bundle);
        }
    }

    /* loaded from: classes.dex */
    private static class ItemReceiver extends ResultReceiver {

        /* renamed from: h, reason: collision with root package name */
        private final String f560h;

        /* renamed from: i, reason: collision with root package name */
        private final d f561i;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i2, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i2 == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                if (parcelable != null && !(parcelable instanceof MediaItem)) {
                    this.f561i.a(this.f560h);
                    return;
                } else {
                    this.f561i.a((MediaItem) parcelable);
                    return;
                }
            }
            this.f561i.a(this.f560h);
        }
    }

    /* loaded from: classes.dex */
    private static class SearchResultReceiver extends ResultReceiver {

        /* renamed from: h, reason: collision with root package name */
        private final String f564h;

        /* renamed from: i, reason: collision with root package name */
        private final Bundle f565i;

        /* renamed from: j, reason: collision with root package name */
        private final k f566j;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i2, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i2 == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
                ArrayList arrayList = null;
                if (parcelableArray != null) {
                    arrayList = new ArrayList();
                    for (Parcelable parcelable : parcelableArray) {
                        arrayList.add((MediaItem) parcelable);
                    }
                }
                this.f566j.a(this.f564h, this.f565i, arrayList);
                return;
            }
            this.f566j.a(this.f564h, this.f565i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<j> f567a;

        /* renamed from: b, reason: collision with root package name */
        private WeakReference<Messenger> f568b;

        a(j jVar) {
            this.f567a = new WeakReference<>(jVar);
        }

        void a(Messenger messenger) {
            this.f568b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f568b;
            if (weakReference == null || weakReference.get() == null || this.f567a.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.a(data);
            j jVar = this.f567a.get();
            Messenger messenger = this.f568b.get();
            try {
                int i2 = message.what;
                if (i2 == 1) {
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.a(bundle);
                    jVar.a(messenger, data.getString("data_media_item_id"), (MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                } else if (i2 == 2) {
                    jVar.a(messenger);
                } else if (i2 != 3) {
                    String str = "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1;
                } else {
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.a(bundle2);
                    Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                    MediaSessionCompat.a(bundle3);
                    jVar.a(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                }
            } catch (BadParcelableException unused) {
                if (message.what == 1) {
                    jVar.a(messenger);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        final MediaBrowser.ConnectionCallback f569a;

        /* renamed from: b, reason: collision with root package name */
        InterfaceC0021b f570b;

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.ConnectionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                InterfaceC0021b interfaceC0021b = b.this.f570b;
                if (interfaceC0021b != null) {
                    interfaceC0021b.e();
                }
                b.this.a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                InterfaceC0021b interfaceC0021b = b.this.f570b;
                if (interfaceC0021b != null) {
                    interfaceC0021b.f();
                }
                b.this.b();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                InterfaceC0021b interfaceC0021b = b.this.f570b;
                if (interfaceC0021b != null) {
                    interfaceC0021b.d();
                }
                b.this.c();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0021b {
            void d();

            void e();

            void f();
        }

        public b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f569a = new a();
            } else {
                this.f569a = null;
            }
        }

        public void a() {
            throw null;
        }

        void a(InterfaceC0021b interfaceC0021b) {
            this.f570b = interfaceC0021b;
        }

        public void b() {
            throw null;
        }

        public void c() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public abstract void a(String str, Bundle bundle, Bundle bundle2);

        public abstract void b(String str, Bundle bundle, Bundle bundle2);

        public abstract void c(String str, Bundle bundle, Bundle bundle2);
    }

    /* loaded from: classes.dex */
    public static abstract class d {
        public abstract void a(MediaItem mediaItem);

        public abstract void a(@NonNull String str);
    }

    /* loaded from: classes.dex */
    interface e {
        void a();

        void b();

        @NonNull
        MediaSessionCompat.Token c();
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    static class g extends f {
        g(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static class h extends g {
        h(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            super(context, componentName, bVar, bundle);
        }
    }

    /* loaded from: classes.dex */
    interface j {
        void a(Messenger messenger);

        void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2);
    }

    /* loaded from: classes.dex */
    public static abstract class k {
        public abstract void a(@NonNull String str, Bundle bundle);

        public abstract void a(@NonNull String str, Bundle bundle, @NonNull List<MediaItem> list);
    }

    /* loaded from: classes.dex */
    private static class m {

        /* renamed from: a, reason: collision with root package name */
        private final List<n> f602a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private final List<Bundle> f603b = new ArrayList();

        public List<n> a() {
            return this.f602a;
        }

        public List<Bundle> b() {
            return this.f603b;
        }

        public n a(Bundle bundle) {
            for (int i2 = 0; i2 < this.f603b.size(); i2++) {
                if (androidx.media.b.a(this.f603b.get(i2), bundle)) {
                    return this.f602a.get(i2);
                }
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class n {

        /* renamed from: a, reason: collision with root package name */
        final IBinder f604a = new Binder();

        /* renamed from: b, reason: collision with root package name */
        WeakReference<m> f605b;

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.SubscriptionCallback {
            a() {
            }

            List<MediaItem> a(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                if (i2 == -1 && i3 == -1) {
                    return list;
                }
                int i4 = i3 * i2;
                int i5 = i4 + i3;
                if (i2 >= 0 && i3 >= 1 && i4 < list.size()) {
                    if (i5 > list.size()) {
                        i5 = list.size();
                    }
                    return list.subList(i4, i5);
                }
                return Collections.emptyList();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
                WeakReference<m> weakReference = n.this.f605b;
                m mVar = weakReference == null ? null : weakReference.get();
                if (mVar == null) {
                    n.this.a(str, MediaItem.a((List<?>) list));
                    return;
                }
                List<MediaItem> a2 = MediaItem.a((List<?>) list);
                List<n> a3 = mVar.a();
                List<Bundle> b2 = mVar.b();
                for (int i2 = 0; i2 < a3.size(); i2++) {
                    Bundle bundle = b2.get(i2);
                    if (bundle == null) {
                        n.this.a(str, a2);
                    } else {
                        n.this.a(str, a(a2, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str) {
                n.this.a(str);
            }
        }

        @RequiresApi(26)
        /* loaded from: classes.dex */
        private class b extends a {
            b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
                MediaSessionCompat.a(bundle);
                n.this.a(str, MediaItem.a((List<?>) list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str, @NonNull Bundle bundle) {
                MediaSessionCompat.a(bundle);
                n.this.a(str, bundle);
            }
        }

        public n() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 26) {
                new b();
            } else if (i2 >= 21) {
                new a();
            }
        }

        public void a(@NonNull String str) {
        }

        public void a(@NonNull String str, @NonNull Bundle bundle) {
        }

        public void a(@NonNull String str, @NonNull List<MediaItem> list) {
        }

        public void a(@NonNull String str, @NonNull List<MediaItem> list, @NonNull Bundle bundle) {
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar, Bundle bundle) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f556a = new h(context, componentName, bVar, bundle);
            return;
        }
        if (i2 >= 23) {
            this.f556a = new g(context, componentName, bVar, bundle);
        } else if (i2 >= 21) {
            this.f556a = new f(context, componentName, bVar, bundle);
        } else {
            this.f556a = new i(context, componentName, bVar, bundle);
        }
    }

    public void a() {
        this.f556a.b();
    }

    public void b() {
        this.f556a.a();
    }

    @NonNull
    public MediaSessionCompat.Token c() {
        return this.f556a.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class i implements e, j {

        /* renamed from: a, reason: collision with root package name */
        final Context f580a;

        /* renamed from: b, reason: collision with root package name */
        final ComponentName f581b;

        /* renamed from: c, reason: collision with root package name */
        final b f582c;

        /* renamed from: d, reason: collision with root package name */
        final Bundle f583d;

        /* renamed from: e, reason: collision with root package name */
        final a f584e = new a(this);

        /* renamed from: f, reason: collision with root package name */
        private final a.e.a<String, m> f585f = new a.e.a<>();

        /* renamed from: g, reason: collision with root package name */
        int f586g = 1;

        /* renamed from: h, reason: collision with root package name */
        c f587h;

        /* renamed from: i, reason: collision with root package name */
        l f588i;

        /* renamed from: j, reason: collision with root package name */
        Messenger f589j;

        /* renamed from: k, reason: collision with root package name */
        private String f590k;

        /* renamed from: l, reason: collision with root package name */
        private MediaSessionCompat.Token f591l;

        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i iVar = i.this;
                if (iVar.f586g == 0) {
                    return;
                }
                iVar.f586g = 2;
                if (MediaBrowserCompat.f555b && iVar.f587h != null) {
                    throw new RuntimeException("mServiceConnection should be null. Instead it is " + i.this.f587h);
                }
                i iVar2 = i.this;
                if (iVar2.f588i == null) {
                    if (iVar2.f589j == null) {
                        Intent intent = new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE);
                        intent.setComponent(i.this.f581b);
                        i iVar3 = i.this;
                        iVar3.f587h = new c();
                        boolean z = false;
                        try {
                            z = i.this.f580a.bindService(intent, i.this.f587h, 1);
                        } catch (Exception unused) {
                            String str = "Failed binding to service " + i.this.f581b;
                        }
                        if (!z) {
                            i.this.e();
                            i.this.f582c.b();
                        }
                        if (MediaBrowserCompat.f555b) {
                            i.this.d();
                            return;
                        }
                        return;
                    }
                    throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + i.this.f589j);
                }
                throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + i.this.f588i);
            }
        }

        /* loaded from: classes.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i iVar = i.this;
                Messenger messenger = iVar.f589j;
                if (messenger != null) {
                    try {
                        iVar.f588i.a(messenger);
                    } catch (RemoteException unused) {
                        String str = "RemoteException during connect for " + i.this.f581b;
                    }
                }
                i iVar2 = i.this;
                int i2 = iVar2.f586g;
                iVar2.e();
                if (i2 != 0) {
                    i.this.f586g = i2;
                }
                if (MediaBrowserCompat.f555b) {
                    i.this.d();
                }
            }
        }

        public i(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            if (context == null) {
                throw new IllegalArgumentException("context must not be null");
            }
            if (componentName == null) {
                throw new IllegalArgumentException("service component must not be null");
            }
            if (bVar != null) {
                this.f580a = context;
                this.f581b = componentName;
                this.f582c = bVar;
                this.f583d = bundle == null ? null : new Bundle(bundle);
                return;
            }
            throw new IllegalArgumentException("connection callback must not be null");
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void a() {
            this.f586g = 0;
            this.f584e.post(new b());
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void b() {
            int i2 = this.f586g;
            if (i2 != 0 && i2 != 1) {
                throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + a(this.f586g) + ")");
            }
            this.f586g = 2;
            this.f584e.post(new a());
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public MediaSessionCompat.Token c() {
            if (f()) {
                return this.f591l;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f586g + ")");
        }

        void d() {
            String str = "  mServiceComponent=" + this.f581b;
            String str2 = "  mCallback=" + this.f582c;
            String str3 = "  mRootHints=" + this.f583d;
            String str4 = "  mState=" + a(this.f586g);
            String str5 = "  mServiceConnection=" + this.f587h;
            String str6 = "  mServiceBinderWrapper=" + this.f588i;
            String str7 = "  mCallbacksMessenger=" + this.f589j;
            String str8 = "  mRootId=" + this.f590k;
            String str9 = "  mMediaSessionToken=" + this.f591l;
        }

        void e() {
            c cVar = this.f587h;
            if (cVar != null) {
                this.f580a.unbindService(cVar);
            }
            this.f586g = 1;
            this.f587h = null;
            this.f588i = null;
            this.f589j = null;
            this.f584e.a(null);
            this.f590k = null;
            this.f591l = null;
        }

        public boolean f() {
            return this.f586g == 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class c implements ServiceConnection {

            /* loaded from: classes.dex */
            class a implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ ComponentName f595e;

                /* renamed from: f, reason: collision with root package name */
                final /* synthetic */ IBinder f596f;

                a(ComponentName componentName, IBinder iBinder) {
                    this.f595e = componentName;
                    this.f596f = iBinder;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f555b) {
                        String str = "MediaServiceConnection.onServiceConnected name=" + this.f595e + " binder=" + this.f596f;
                        i.this.d();
                    }
                    if (c.this.a("onServiceConnected")) {
                        i iVar = i.this;
                        iVar.f588i = new l(this.f596f, iVar.f583d);
                        i iVar2 = i.this;
                        iVar2.f589j = new Messenger(iVar2.f584e);
                        i iVar3 = i.this;
                        iVar3.f584e.a(iVar3.f589j);
                        i.this.f586g = 2;
                        try {
                            if (MediaBrowserCompat.f555b) {
                                i.this.d();
                            }
                            i.this.f588i.a(i.this.f580a, i.this.f589j);
                        } catch (RemoteException unused) {
                            String str2 = "RemoteException during connect for " + i.this.f581b;
                            if (MediaBrowserCompat.f555b) {
                                i.this.d();
                            }
                        }
                    }
                }
            }

            /* loaded from: classes.dex */
            class b implements Runnable {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ ComponentName f598e;

                b(ComponentName componentName) {
                    this.f598e = componentName;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (MediaBrowserCompat.f555b) {
                        String str = "MediaServiceConnection.onServiceDisconnected name=" + this.f598e + " this=" + this + " mServiceConnection=" + i.this.f587h;
                        i.this.d();
                    }
                    if (c.this.a("onServiceDisconnected")) {
                        i iVar = i.this;
                        iVar.f588i = null;
                        iVar.f589j = null;
                        iVar.f584e.a(null);
                        i iVar2 = i.this;
                        iVar2.f586g = 4;
                        iVar2.f582c.c();
                    }
                }
            }

            c() {
            }

            private void a(Runnable runnable) {
                if (Thread.currentThread() == i.this.f584e.getLooper().getThread()) {
                    runnable.run();
                } else {
                    i.this.f584e.post(runnable);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                a(new a(componentName, iBinder));
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                a(new b(componentName));
            }

            boolean a(String str) {
                int i2;
                i iVar = i.this;
                if (iVar.f587h == this && (i2 = iVar.f586g) != 0 && i2 != 1) {
                    return true;
                }
                int i3 = i.this.f586g;
                if (i3 == 0 || i3 == 1) {
                    return false;
                }
                String str2 = str + " for " + i.this.f581b + " with mServiceConnection=" + i.this.f587h + " this=" + this;
                return false;
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (a(messenger, "onConnect")) {
                if (this.f586g != 2) {
                    String str2 = "onConnect from service while mState=" + a(this.f586g) + "... ignoring";
                    return;
                }
                this.f590k = str;
                this.f591l = token;
                this.f586g = 3;
                if (MediaBrowserCompat.f555b) {
                    d();
                }
                this.f582c.a();
                try {
                    for (Map.Entry<String, m> entry : this.f585f.entrySet()) {
                        String key = entry.getKey();
                        m value = entry.getValue();
                        List<n> a2 = value.a();
                        List<Bundle> b2 = value.b();
                        for (int i2 = 0; i2 < a2.size(); i2++) {
                            this.f588i.a(key, a2.get(i2).f604a, b2.get(i2), this.f589j);
                        }
                    }
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void a(Messenger messenger) {
            String str = "onConnectFailed for " + this.f581b;
            if (a(messenger, "onConnectFailed")) {
                if (this.f586g != 2) {
                    String str2 = "onConnect from service while mState=" + a(this.f586g) + "... ignoring";
                    return;
                }
                e();
                this.f582c.b();
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (a(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f555b) {
                    String str2 = "onLoadChildren for " + this.f581b + " id=" + str;
                }
                m mVar = this.f585f.get(str);
                if (mVar == null) {
                    if (MediaBrowserCompat.f555b) {
                        String str3 = "onLoadChildren for id that isn't subscribed id=" + str;
                        return;
                    }
                    return;
                }
                n a2 = mVar.a(bundle);
                if (a2 != null) {
                    if (bundle == null) {
                        if (list == null) {
                            a2.a(str);
                            return;
                        } else {
                            a2.a(str, (List<MediaItem>) list);
                            return;
                        }
                    }
                    if (list == null) {
                        a2.a(str, bundle);
                    } else {
                        a2.a(str, list, bundle);
                    }
                }
            }
        }

        private static String a(int i2) {
            if (i2 == 0) {
                return "CONNECT_STATE_DISCONNECTING";
            }
            if (i2 == 1) {
                return "CONNECT_STATE_DISCONNECTED";
            }
            if (i2 == 2) {
                return "CONNECT_STATE_CONNECTING";
            }
            if (i2 == 3) {
                return "CONNECT_STATE_CONNECTED";
            }
            if (i2 == 4) {
                return "CONNECT_STATE_SUSPENDED";
            }
            return "UNKNOWN/" + i2;
        }

        private boolean a(Messenger messenger, String str) {
            int i2;
            if (this.f589j == messenger && (i2 = this.f586g) != 0 && i2 != 1) {
                return true;
            }
            int i3 = this.f586g;
            if (i3 == 0 || i3 == 1) {
                return false;
            }
            String str2 = str + " for " + this.f581b + " with mCallbacksMessenger=" + this.f589j + " this=" + this;
            return false;
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class f implements e, j, b.InterfaceC0021b {

        /* renamed from: a, reason: collision with root package name */
        final Context f572a;

        /* renamed from: b, reason: collision with root package name */
        protected final MediaBrowser f573b;

        /* renamed from: c, reason: collision with root package name */
        protected final Bundle f574c;

        /* renamed from: d, reason: collision with root package name */
        protected final a f575d = new a(this);

        /* renamed from: e, reason: collision with root package name */
        private final a.e.a<String, m> f576e = new a.e.a<>();

        /* renamed from: f, reason: collision with root package name */
        protected l f577f;

        /* renamed from: g, reason: collision with root package name */
        protected Messenger f578g;

        /* renamed from: h, reason: collision with root package name */
        private MediaSessionCompat.Token f579h;

        f(Context context, ComponentName componentName, b bVar, Bundle bundle) {
            this.f572a = context;
            this.f574c = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f574c.putInt("extra_client_version", 1);
            this.f574c.putInt("extra_calling_pid", Process.myPid());
            bVar.a(this);
            this.f573b = new MediaBrowser(context, componentName, bVar.f569a, this.f574c);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void a() {
            Messenger messenger;
            l lVar = this.f577f;
            if (lVar != null && (messenger = this.f578g) != null) {
                try {
                    lVar.b(messenger);
                } catch (RemoteException unused) {
                }
            }
            this.f573b.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void a(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void a(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        public void b() {
            this.f573b.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.e
        @NonNull
        public MediaSessionCompat.Token c() {
            if (this.f579h == null) {
                this.f579h = MediaSessionCompat.Token.a(this.f573b.getSessionToken());
            }
            return this.f579h;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.InterfaceC0021b
        public void d() {
            this.f577f = null;
            this.f578g = null;
            this.f579h = null;
            this.f575d.a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.InterfaceC0021b
        public void e() {
            try {
                Bundle extras = this.f573b.getExtras();
                if (extras == null) {
                    return;
                }
                extras.getInt("extra_service_version", 0);
                IBinder a2 = androidx.core.app.e.a(extras, "extra_messenger");
                if (a2 != null) {
                    this.f577f = new l(a2, this.f574c);
                    this.f578g = new Messenger(this.f575d);
                    this.f575d.a(this.f578g);
                    try {
                        this.f577f.b(this.f572a, this.f578g);
                    } catch (RemoteException unused) {
                    }
                }
                IMediaSession asInterface = IMediaSession.Stub.asInterface(androidx.core.app.e.a(extras, "extra_session_binder"));
                if (asInterface != null) {
                    this.f579h = MediaSessionCompat.Token.a(this.f573b.getSessionToken(), asInterface);
                }
            } catch (IllegalStateException unused2) {
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b.InterfaceC0021b
        public void f() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.j
        public void a(Messenger messenger, String str, List list, Bundle bundle, Bundle bundle2) {
            if (this.f578g != messenger) {
                return;
            }
            m mVar = this.f576e.get(str);
            if (mVar == null) {
                if (MediaBrowserCompat.f555b) {
                    String str2 = "onLoadChildren for id that isn't subscribed id=" + str;
                    return;
                }
                return;
            }
            n a2 = mVar.a(bundle);
            if (a2 != null) {
                if (bundle == null) {
                    if (list == null) {
                        a2.a(str);
                        return;
                    } else {
                        a2.a(str, (List<MediaItem>) list);
                        return;
                    }
                }
                if (list == null) {
                    a2.a(str, bundle);
                } else {
                    a2.a(str, list, bundle);
                }
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        private final int f562e;

        /* renamed from: f, reason: collision with root package name */
        private final MediaDescriptionCompat f563f;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes.dex */
        public @interface Flags {
        }

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<MediaItem> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaItem[] newArray(int i2) {
                return new MediaItem[i2];
            }
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i2) {
            if (mediaDescriptionCompat != null) {
                if (!TextUtils.isEmpty(mediaDescriptionCompat.b())) {
                    this.f562e = i2;
                    this.f563f = mediaDescriptionCompat;
                    return;
                }
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            throw new IllegalArgumentException("description cannot be null");
        }

        public static MediaItem a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
            return new MediaItem(MediaDescriptionCompat.a(mediaItem.getDescription()), mediaItem.getFlags());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.f562e + ", mDescription=" + this.f563f + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f562e);
            this.f563f.writeToParcel(parcel, i2);
        }

        public static List<MediaItem> a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            return arrayList;
        }

        MediaItem(Parcel parcel) {
            this.f562e = parcel.readInt();
            this.f563f = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        private Messenger f600a;

        /* renamed from: b, reason: collision with root package name */
        private Bundle f601b;

        public l(IBinder iBinder, Bundle bundle) {
            this.f600a = new Messenger(iBinder);
            this.f601b = bundle;
        }

        void a(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle("data_root_hints", this.f601b);
            a(1, bundle, messenger);
        }

        void b(Context context, Messenger messenger) {
            Bundle bundle = new Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putInt("data_calling_pid", Process.myPid());
            bundle.putBundle("data_root_hints", this.f601b);
            a(6, bundle, messenger);
        }

        void a(Messenger messenger) {
            a(2, null, messenger);
        }

        void b(Messenger messenger) {
            a(7, null, messenger);
        }

        void a(String str, IBinder iBinder, Bundle bundle, Messenger messenger) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            androidx.core.app.e.a(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            a(3, bundle2, messenger);
        }

        private void a(int i2, Bundle bundle, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = i2;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f600a.send(obtain);
        }
    }
}

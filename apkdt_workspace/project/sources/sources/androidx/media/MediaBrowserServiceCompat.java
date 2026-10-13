package androidx.media;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    @RestrictTo({RestrictTo.a.LIBRARY})
    public static final String KEY_MEDIA_ITEM = "media_item";

    @RestrictTo({RestrictTo.a.LIBRARY})
    public static final String KEY_SEARCH_RESULTS = "search_results";

    @RestrictTo({RestrictTo.a.LIBRARY})
    public static final int RESULT_ERROR = -1;
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;

    @RestrictTo({RestrictTo.a.LIBRARY})
    public static final int RESULT_OK = 0;

    @RestrictTo({RestrictTo.a.LIBRARY})
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";

    /* renamed from: e, reason: collision with root package name */
    private g f2383e;
    f mCurConnection;
    MediaSessionCompat.Token mSession;
    static final String TAG = "MBServiceCompat";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    final f mConnectionFromFwk = new f("android.media.session.MediaController", -1, -1, null, null);
    final ArrayList<f> mPendingConnections = new ArrayList<>();
    final a.e.a<IBinder, f> mConnections = new a.e.a<>();
    final r mHandler = new r();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends m<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ f f2384f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f2385g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ Bundle f2386h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ Bundle f2387i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object obj, f fVar, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            this.f2384f = fVar;
            this.f2385g = str;
            this.f2386h = bundle;
            this.f2387i = bundle2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        public void a(List<MediaBrowserCompat.MediaItem> list) {
            if (MediaBrowserServiceCompat.this.mConnections.get(this.f2384f.f2399f.asBinder()) != this.f2384f) {
                if (MediaBrowserServiceCompat.DEBUG) {
                    String str = "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + this.f2384f.f2394a + " id=" + this.f2385g;
                    return;
                }
                return;
            }
            if ((a() & 1) != 0) {
                list = MediaBrowserServiceCompat.this.applyOptions(list, this.f2386h);
            }
            try {
                this.f2384f.f2399f.a(this.f2385g, list, this.f2386h, this.f2387i);
            } catch (RemoteException unused) {
                String str2 = "Calling onLoadChildren() failed for id=" + this.f2385g + " package=" + this.f2384f.f2394a;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends m<MediaBrowserCompat.MediaItem> {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f2389f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f2389f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        public void a(MediaBrowserCompat.MediaItem mediaItem) {
            if ((a() & 2) != 0) {
                this.f2389f.b(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaItem);
            this.f2389f.b(0, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends m<List<MediaBrowserCompat.MediaItem>> {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f2390f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f2390f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        public void a(List<MediaBrowserCompat.MediaItem> list) {
            if ((a() & 4) == 0 && list != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                this.f2390f.b(0, bundle);
                return;
            }
            this.f2390f.b(-1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d extends m<Bundle> {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ResultReceiver f2391f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
            super(obj);
            this.f2391f = resultReceiver;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(Bundle bundle) {
            this.f2391f.b(0, bundle);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media.MediaBrowserServiceCompat.m
        void a(Bundle bundle) {
            this.f2391f.b(-1, bundle);
        }
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a, reason: collision with root package name */
        private final String f2392a;

        /* renamed from: b, reason: collision with root package name */
        private final Bundle f2393b;

        public e(@NonNull String str, @Nullable Bundle bundle) {
            if (str != null) {
                this.f2392a = str;
                this.f2393b = bundle;
                return;
            }
            throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
        }

        public Bundle a() {
            return this.f2393b;
        }

        public String b() {
            return this.f2392a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements IBinder.DeathRecipient {

        /* renamed from: a, reason: collision with root package name */
        public final String f2394a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2395b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2396c;

        /* renamed from: d, reason: collision with root package name */
        public final androidx.media.c f2397d;

        /* renamed from: e, reason: collision with root package name */
        public final Bundle f2398e;

        /* renamed from: f, reason: collision with root package name */
        public final p f2399f;

        /* renamed from: g, reason: collision with root package name */
        public final HashMap<String, List<a.i.m.e<IBinder, Bundle>>> f2400g = new HashMap<>();

        /* renamed from: h, reason: collision with root package name */
        public e f2401h;

        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = f.this;
                MediaBrowserServiceCompat.this.mConnections.remove(fVar.f2399f.asBinder());
            }
        }

        f(String str, int i2, int i3, Bundle bundle, p pVar) {
            this.f2394a = str;
            this.f2395b = i2;
            this.f2396c = i3;
            this.f2397d = new androidx.media.c(str, i2, i3);
            this.f2398e = bundle;
            this.f2399f = pVar;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.mHandler.post(new a());
        }
    }

    /* loaded from: classes.dex */
    interface g {
        IBinder a(Intent intent);

        void a();

        void a(MediaSessionCompat.Token token);

        void a(androidx.media.c cVar, String str, Bundle bundle);

        void a(String str, Bundle bundle);

        Bundle b();

        androidx.media.c c();
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    class h implements g {

        /* renamed from: a, reason: collision with root package name */
        final List<Bundle> f2404a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        MediaBrowserService f2405b;

        /* renamed from: c, reason: collision with root package name */
        Messenger f2406c;

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ MediaSessionCompat.Token f2408e;

            a(MediaSessionCompat.Token token) {
                this.f2408e = token;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!h.this.f2404a.isEmpty()) {
                    IMediaSession a2 = this.f2408e.a();
                    if (a2 != null) {
                        Iterator<Bundle> it = h.this.f2404a.iterator();
                        while (it.hasNext()) {
                            androidx.core.app.e.a(it.next(), "extra_session_binder", a2.asBinder());
                        }
                    }
                    h.this.f2404a.clear();
                }
                h.this.f2405b.setSessionToken((MediaSession.Token) this.f2408e.b());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class b extends m<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ n f2410f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(h hVar, Object obj, n nVar) {
                super(obj);
                this.f2410f = nVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.m
            public void a(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList;
                if (list != null) {
                    arrayList = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList.add(obtain);
                    }
                } else {
                    arrayList = null;
                }
                this.f2410f.a((n) arrayList);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class c implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f2411e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ Bundle f2412f;

            c(String str, Bundle bundle) {
                this.f2411e = str;
                this.f2412f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    h.this.a(MediaBrowserServiceCompat.this.mConnections.get(it.next()), this.f2411e, this.f2412f);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class d implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ androidx.media.c f2414e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2415f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f2416g;

            d(androidx.media.c cVar, String str, Bundle bundle) {
                this.f2414e = cVar;
                this.f2415f = str;
                this.f2416g = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i2 = 0; i2 < MediaBrowserServiceCompat.this.mConnections.size(); i2++) {
                    f d2 = MediaBrowserServiceCompat.this.mConnections.d(i2);
                    if (d2.f2397d.equals(this.f2414e)) {
                        h.this.a(d2, this.f2415f, this.f2416g);
                    }
                }
            }
        }

        /* loaded from: classes.dex */
        class e extends MediaBrowserService {
            e(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            @SuppressLint({"SyntheticAccessor"})
            public MediaBrowserService.BrowserRoot onGetRoot(String str, int i2, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                e a2 = h.this.a(str, i2, bundle == null ? null : new Bundle(bundle));
                if (a2 == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(a2.f2392a, a2.f2393b);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
                h.this.a(str, new n<>(result));
            }
        }

        h() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            this.f2405b = new e(MediaBrowserServiceCompat.this);
            this.f2405b.onCreate();
        }

        void b(String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new c(str, bundle));
        }

        void c(String str, Bundle bundle) {
            this.f2405b.notifyChildrenChanged(str);
        }

        void b(androidx.media.c cVar, String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new d(cVar, str, bundle));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public androidx.media.c c() {
            f fVar = MediaBrowserServiceCompat.this.mCurConnection;
            if (fVar != null) {
                return fVar.f2397d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public IBinder a(Intent intent) {
            return this.f2405b.onBind(intent);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public Bundle b() {
            if (this.f2406c == null) {
                return null;
            }
            f fVar = MediaBrowserServiceCompat.this.mCurConnection;
            if (fVar != null) {
                Bundle bundle = fVar.f2398e;
                if (bundle == null) {
                    return null;
                }
                return new Bundle(bundle);
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a(MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.mHandler.a(new a(token));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a(String str, Bundle bundle) {
            c(str, bundle);
            b(str, bundle);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a(androidx.media.c cVar, String str, Bundle bundle) {
            b(cVar, str, bundle);
        }

        public e a(String str, int i2, Bundle bundle) {
            Bundle bundle2;
            int i3;
            if (bundle == null || bundle.getInt("extra_client_version", 0) == 0) {
                bundle2 = null;
                i3 = -1;
            } else {
                bundle.remove("extra_client_version");
                this.f2406c = new Messenger(MediaBrowserServiceCompat.this.mHandler);
                bundle2 = new Bundle();
                bundle2.putInt("extra_service_version", 2);
                androidx.core.app.e.a(bundle2, "extra_messenger", this.f2406c.getBinder());
                MediaSessionCompat.Token token = MediaBrowserServiceCompat.this.mSession;
                if (token != null) {
                    IMediaSession a2 = token.a();
                    androidx.core.app.e.a(bundle2, "extra_session_binder", a2 == null ? null : a2.asBinder());
                } else {
                    this.f2404a.add(bundle2);
                }
                int i4 = bundle.getInt("extra_calling_pid", -1);
                bundle.remove("extra_calling_pid");
                i3 = i4;
            }
            f fVar = new f(str, i3, i2, bundle, null);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = fVar;
            e onGetRoot = mediaBrowserServiceCompat.onGetRoot(str, i2, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat2.mCurConnection = null;
            if (onGetRoot == null) {
                return null;
            }
            if (this.f2406c != null) {
                mediaBrowserServiceCompat2.mPendingConnections.add(fVar);
            }
            if (bundle2 == null) {
                bundle2 = onGetRoot.a();
            } else if (onGetRoot.a() != null) {
                bundle2.putAll(onGetRoot.a());
            }
            return new e(onGetRoot.b(), bundle2);
        }

        public void a(String str, n<List<Parcel>> nVar) {
            b bVar = new b(this, str, nVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
            mediaBrowserServiceCompat.onLoadChildren(str, bVar);
            MediaBrowserServiceCompat.this.mCurConnection = null;
        }

        void a(f fVar, String str, Bundle bundle) {
            List<a.i.m.e<IBinder, Bundle>> list = fVar.f2400g.get(str);
            if (list != null) {
                for (a.i.m.e<IBinder, Bundle> eVar : list) {
                    if (androidx.media.b.b(bundle, eVar.f364b)) {
                        MediaBrowserServiceCompat.this.performLoadChildren(str, fVar, eVar.f364b, bundle);
                    }
                }
            }
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    class i extends h {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends m<MediaBrowserCompat.MediaItem> {

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ n f2420f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(i iVar, Object obj, n nVar) {
                super(obj);
                this.f2420f = nVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.m
            public void a(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    this.f2420f.a((n) null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                mediaItem.writeToParcel(obtain, 0);
                this.f2420f.a((n) obtain);
            }
        }

        /* loaded from: classes.dex */
        class b extends h.e {
            b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
                i.this.b(str, new n<>(result));
            }
        }

        i() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.h, androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            this.f2405b = new b(MediaBrowserServiceCompat.this);
            this.f2405b.onCreate();
        }

        public void b(String str, n<Parcel> nVar) {
            a aVar = new a(this, str, nVar);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
            mediaBrowserServiceCompat.onLoadItem(str, aVar);
            MediaBrowserServiceCompat.this.mCurConnection = null;
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    class k extends j {
        k() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.h, androidx.media.MediaBrowserServiceCompat.g
        public androidx.media.c c() {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            f fVar = mediaBrowserServiceCompat.mCurConnection;
            if (fVar != null) {
                if (fVar == mediaBrowserServiceCompat.mConnectionFromFwk) {
                    return new androidx.media.c(this.f2405b.getCurrentBrowserInfo());
                }
                return fVar.f2397d;
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }
    }

    /* loaded from: classes.dex */
    class l implements g {

        /* renamed from: a, reason: collision with root package name */
        private Messenger f2428a;

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ MediaSessionCompat.Token f2430e;

            a(MediaSessionCompat.Token token) {
                this.f2430e = token;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<f> it = MediaBrowserServiceCompat.this.mConnections.values().iterator();
                while (it.hasNext()) {
                    f next = it.next();
                    try {
                        next.f2399f.a(next.f2401h.b(), this.f2430e, next.f2401h.a());
                    } catch (RemoteException unused) {
                        String str = "Connection for " + next.f2394a + " is no longer valid.";
                        it.remove();
                    }
                }
            }
        }

        /* loaded from: classes.dex */
        class b implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f2432e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ Bundle f2433f;

            b(String str, Bundle bundle) {
                this.f2432e = str;
                this.f2433f = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    l.this.a(MediaBrowserServiceCompat.this.mConnections.get(it.next()), this.f2432e, this.f2433f);
                }
            }
        }

        /* loaded from: classes.dex */
        class c implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ androidx.media.c f2435e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2436f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f2437g;

            c(androidx.media.c cVar, String str, Bundle bundle) {
                this.f2435e = cVar;
                this.f2436f = str;
                this.f2437g = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i2 = 0; i2 < MediaBrowserServiceCompat.this.mConnections.size(); i2++) {
                    f d2 = MediaBrowserServiceCompat.this.mConnections.d(i2);
                    if (d2.f2397d.equals(this.f2435e)) {
                        l.this.a(d2, this.f2436f, this.f2437g);
                        return;
                    }
                }
            }
        }

        l() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            this.f2428a = new Messenger(MediaBrowserServiceCompat.this.mHandler);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public Bundle b() {
            f fVar = MediaBrowserServiceCompat.this.mCurConnection;
            if (fVar != null) {
                Bundle bundle = fVar.f2398e;
                if (bundle == null) {
                    return null;
                }
                return new Bundle(bundle);
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public androidx.media.c c() {
            f fVar = MediaBrowserServiceCompat.this.mCurConnection;
            if (fVar != null) {
                return fVar.f2397d;
            }
            throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public IBinder a(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.f2428a.getBinder();
            }
            return null;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a(MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.mHandler.post(new a(token));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a(@NonNull String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new b(str, bundle));
        }

        @Override // androidx.media.MediaBrowserServiceCompat.g
        public void a(@NonNull androidx.media.c cVar, @NonNull String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new c(cVar, str, bundle));
        }

        void a(f fVar, String str, Bundle bundle) {
            List<a.i.m.e<IBinder, Bundle>> list = fVar.f2400g.get(str);
            if (list != null) {
                for (a.i.m.e<IBinder, Bundle> eVar : list) {
                    if (androidx.media.b.b(bundle, eVar.f364b)) {
                        MediaBrowserServiceCompat.this.performLoadChildren(str, fVar, eVar.f364b, bundle);
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class m<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Object f2439a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f2440b;

        /* renamed from: c, reason: collision with root package name */
        private boolean f2441c;

        /* renamed from: d, reason: collision with root package name */
        private boolean f2442d;

        /* renamed from: e, reason: collision with root package name */
        private int f2443e;

        m(Object obj) {
            this.f2439a = obj;
        }

        void a(int i2) {
            this.f2443e = i2;
        }

        void a(T t) {
            throw null;
        }

        public void b(T t) {
            if (!this.f2441c && !this.f2442d) {
                this.f2441c = true;
                a((m<T>) t);
            } else {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.f2439a);
            }
        }

        int a() {
            return this.f2443e;
        }

        void a(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f2439a);
        }

        public void b(Bundle bundle) {
            if (!this.f2441c && !this.f2442d) {
                this.f2442d = true;
                a(bundle);
            } else {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.f2439a);
            }
        }

        boolean b() {
            return this.f2440b || this.f2441c || this.f2442d;
        }
    }

    /* loaded from: classes.dex */
    private class o {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2446e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2447f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ int f2448g;

            /* renamed from: h, reason: collision with root package name */
            final /* synthetic */ int f2449h;

            /* renamed from: i, reason: collision with root package name */
            final /* synthetic */ Bundle f2450i;

            a(p pVar, String str, int i2, int i3, Bundle bundle) {
                this.f2446e = pVar;
                this.f2447f = str;
                this.f2448g = i2;
                this.f2449h = i3;
                this.f2450i = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f2446e.asBinder();
                MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                f fVar = new f(this.f2447f, this.f2448g, this.f2449h, this.f2450i, this.f2446e);
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.mCurConnection = fVar;
                fVar.f2401h = mediaBrowserServiceCompat.onGetRoot(this.f2447f, this.f2449h, this.f2450i);
                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat2.mCurConnection = null;
                if (fVar.f2401h == null) {
                    String str = "No root for client " + this.f2447f + " from service " + a.class.getName();
                    try {
                        this.f2446e.a();
                        return;
                    } catch (RemoteException unused) {
                        String str2 = "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f2447f;
                        return;
                    }
                }
                try {
                    mediaBrowserServiceCompat2.mConnections.put(asBinder, fVar);
                    asBinder.linkToDeath(fVar, 0);
                    if (MediaBrowserServiceCompat.this.mSession != null) {
                        this.f2446e.a(fVar.f2401h.b(), MediaBrowserServiceCompat.this.mSession, fVar.f2401h.a());
                    }
                } catch (RemoteException unused2) {
                    String str3 = "Calling onConnect() failed. Dropping client. pkg=" + this.f2447f;
                    MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class b implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2452e;

            b(p pVar) {
                this.f2452e = pVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                f remove = MediaBrowserServiceCompat.this.mConnections.remove(this.f2452e.asBinder());
                if (remove != null) {
                    remove.f2399f.asBinder().unlinkToDeath(remove, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class c implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2454e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2455f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ IBinder f2456g;

            /* renamed from: h, reason: collision with root package name */
            final /* synthetic */ Bundle f2457h;

            c(p pVar, String str, IBinder iBinder, Bundle bundle) {
                this.f2454e = pVar;
                this.f2455f = str;
                this.f2456g = iBinder;
                this.f2457h = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.mConnections.get(this.f2454e.asBinder());
                if (fVar == null) {
                    String str = "addSubscription for callback that isn't registered id=" + this.f2455f;
                    return;
                }
                MediaBrowserServiceCompat.this.addSubscription(this.f2455f, fVar, this.f2456g, this.f2457h);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class d implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2459e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2460f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ IBinder f2461g;

            d(p pVar, String str, IBinder iBinder) {
                this.f2459e = pVar;
                this.f2460f = str;
                this.f2461g = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.mConnections.get(this.f2459e.asBinder());
                if (fVar == null) {
                    String str = "removeSubscription for callback that isn't registered id=" + this.f2460f;
                    return;
                }
                if (MediaBrowserServiceCompat.this.removeSubscription(this.f2460f, fVar, this.f2461g)) {
                    return;
                }
                String str2 = "removeSubscription called for " + this.f2460f + " which is not subscribed";
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class e implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2463e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2464f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ ResultReceiver f2465g;

            e(p pVar, String str, ResultReceiver resultReceiver) {
                this.f2463e = pVar;
                this.f2464f = str;
                this.f2465g = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.mConnections.get(this.f2463e.asBinder());
                if (fVar == null) {
                    String str = "getMediaItem for callback that isn't registered id=" + this.f2464f;
                    return;
                }
                MediaBrowserServiceCompat.this.performLoadItem(this.f2464f, fVar, this.f2465g);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class f implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2467e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f2468f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ String f2469g;

            /* renamed from: h, reason: collision with root package name */
            final /* synthetic */ int f2470h;

            /* renamed from: i, reason: collision with root package name */
            final /* synthetic */ Bundle f2471i;

            f(p pVar, int i2, String str, int i3, Bundle bundle) {
                this.f2467e = pVar;
                this.f2468f = i2;
                this.f2469g = str;
                this.f2470h = i3;
                this.f2471i = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f2467e.asBinder();
                MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                Iterator<f> it = MediaBrowserServiceCompat.this.mPendingConnections.iterator();
                f fVar = null;
                while (it.hasNext()) {
                    f next = it.next();
                    if (next.f2396c == this.f2468f) {
                        if (TextUtils.isEmpty(this.f2469g) || this.f2470h <= 0) {
                            fVar = new f(next.f2394a, next.f2395b, next.f2396c, this.f2471i, this.f2467e);
                        }
                        it.remove();
                    }
                }
                f fVar2 = fVar == null ? new f(this.f2469g, this.f2470h, this.f2468f, this.f2471i, this.f2467e) : fVar;
                MediaBrowserServiceCompat.this.mConnections.put(asBinder, fVar2);
                try {
                    asBinder.linkToDeath(fVar2, 0);
                } catch (RemoteException unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class g implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2473e;

            g(p pVar) {
                this.f2473e = pVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = this.f2473e.asBinder();
                f remove = MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                if (remove != null) {
                    asBinder.unlinkToDeath(remove, 0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class h implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2475e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2476f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f2477g;

            /* renamed from: h, reason: collision with root package name */
            final /* synthetic */ ResultReceiver f2478h;

            h(p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f2475e = pVar;
                this.f2476f = str;
                this.f2477g = bundle;
                this.f2478h = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.mConnections.get(this.f2475e.asBinder());
                if (fVar == null) {
                    String str = "search for callback that isn't registered query=" + this.f2476f;
                    return;
                }
                MediaBrowserServiceCompat.this.performSearch(this.f2476f, this.f2477g, fVar, this.f2478h);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class i implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ p f2480e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f2481f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f2482g;

            /* renamed from: h, reason: collision with root package name */
            final /* synthetic */ ResultReceiver f2483h;

            i(p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f2480e = pVar;
                this.f2481f = str;
                this.f2482g = bundle;
                this.f2483h = resultReceiver;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = MediaBrowserServiceCompat.this.mConnections.get(this.f2480e.asBinder());
                if (fVar == null) {
                    String str = "sendCustomAction for callback that isn't registered action=" + this.f2481f + ", extras=" + this.f2482g;
                    return;
                }
                MediaBrowserServiceCompat.this.performCustomAction(this.f2481f, this.f2482g, fVar, this.f2483h);
            }
        }

        o() {
        }

        public void a(String str, int i2, int i3, Bundle bundle, p pVar) {
            if (MediaBrowserServiceCompat.this.isValidPackage(str, i3)) {
                MediaBrowserServiceCompat.this.mHandler.a(new a(pVar, str, i2, i3, bundle));
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i3 + " package=" + str);
        }

        public void b(p pVar) {
            MediaBrowserServiceCompat.this.mHandler.a(new g(pVar));
        }

        public void b(String str, Bundle bundle, ResultReceiver resultReceiver, p pVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.mHandler.a(new i(pVar, str, bundle, resultReceiver));
        }

        public void a(p pVar) {
            MediaBrowserServiceCompat.this.mHandler.a(new b(pVar));
        }

        public void a(String str, IBinder iBinder, Bundle bundle, p pVar) {
            MediaBrowserServiceCompat.this.mHandler.a(new c(pVar, str, iBinder, bundle));
        }

        public void a(String str, IBinder iBinder, p pVar) {
            MediaBrowserServiceCompat.this.mHandler.a(new d(pVar, str, iBinder));
        }

        public void a(String str, ResultReceiver resultReceiver, p pVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.mHandler.a(new e(pVar, str, resultReceiver));
        }

        public void a(p pVar, String str, int i2, int i3, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.a(new f(pVar, i3, str, i2, bundle));
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver, p pVar) {
            if (TextUtils.isEmpty(str) || resultReceiver == null) {
                return;
            }
            MediaBrowserServiceCompat.this.mHandler.a(new h(pVar, str, bundle, resultReceiver));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface p {
        void a();

        void a(String str, MediaSessionCompat.Token token, Bundle bundle);

        void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2);

        IBinder asBinder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class r extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private final o f2486a;

        r() {
            this.f2486a = new o();
        }

        public void a(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle("data_root_hints");
                    MediaSessionCompat.a(bundle);
                    this.f2486a.a(data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle, new q(message.replyTo));
                    return;
                case 2:
                    this.f2486a.a(new q(message.replyTo));
                    return;
                case 3:
                    Bundle bundle2 = data.getBundle("data_options");
                    MediaSessionCompat.a(bundle2);
                    this.f2486a.a(data.getString("data_media_item_id"), androidx.core.app.e.a(data, "data_callback_token"), bundle2, new q(message.replyTo));
                    return;
                case 4:
                    this.f2486a.a(data.getString("data_media_item_id"), androidx.core.app.e.a(data, "data_callback_token"), new q(message.replyTo));
                    return;
                case 5:
                    this.f2486a.a(data.getString("data_media_item_id"), (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    return;
                case 6:
                    Bundle bundle3 = data.getBundle("data_root_hints");
                    MediaSessionCompat.a(bundle3);
                    this.f2486a.a(new q(message.replyTo), data.getString("data_package_name"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid"), bundle3);
                    return;
                case 7:
                    this.f2486a.b(new q(message.replyTo));
                    return;
                case 8:
                    Bundle bundle4 = data.getBundle("data_search_extras");
                    MediaSessionCompat.a(bundle4);
                    this.f2486a.a(data.getString("data_search_query"), bundle4, (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    return;
                case 9:
                    Bundle bundle5 = data.getBundle("data_custom_action_extras");
                    MediaSessionCompat.a(bundle5);
                    this.f2486a.b(data.getString("data_custom_action"), bundle5, (ResultReceiver) data.getParcelable("data_result_receiver"), new q(message.replyTo));
                    return;
                default:
                    String str = "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1;
                    return;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j2) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j2);
        }
    }

    void addSubscription(String str, f fVar, IBinder iBinder, Bundle bundle) {
        List<a.i.m.e<IBinder, Bundle>> list = fVar.f2400g.get(str);
        if (list == null) {
            list = new ArrayList<>();
        }
        for (a.i.m.e<IBinder, Bundle> eVar : list) {
            if (iBinder == eVar.f363a && androidx.media.b.a(bundle, eVar.f364b)) {
                return;
            }
        }
        list.add(new a.i.m.e<>(iBinder, bundle));
        fVar.f2400g.put(str, list);
        performLoadChildren(str, fVar, bundle, null);
        this.mCurConnection = fVar;
        onSubscribe(str, bundle);
        this.mCurConnection = null;
    }

    List<MediaBrowserCompat.MediaItem> applyOptions(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
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

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void attachToBaseContext(Context context) {
        attachBaseContext(context);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final Bundle getBrowserRootHints() {
        return this.f2383e.b();
    }

    @NonNull
    public final androidx.media.c getCurrentBrowserInfo() {
        return this.f2383e.c();
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.mSession;
    }

    boolean isValidPackage(String str, int i2) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i2)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void notifyChildrenChanged(@NonNull String str) {
        if (str != null) {
            this.f2383e.a(str, null);
            return;
        }
        throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2383e.a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f2383e = new k();
        } else if (i2 >= 26) {
            this.f2383e = new j();
        } else if (i2 >= 23) {
            this.f2383e = new i();
        } else if (i2 >= 21) {
            this.f2383e = new h();
        } else {
            this.f2383e = new l();
        }
        this.f2383e.a();
    }

    public void onCustomAction(@NonNull String str, Bundle bundle, @NonNull m<Bundle> mVar) {
        mVar.b((Bundle) null);
    }

    @Nullable
    public abstract e onGetRoot(@NonNull String str, int i2, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull m<List<MediaBrowserCompat.MediaItem>> mVar);

    public void onLoadChildren(@NonNull String str, @NonNull m<List<MediaBrowserCompat.MediaItem>> mVar, @NonNull Bundle bundle) {
        mVar.a(1);
        onLoadChildren(str, mVar);
    }

    public void onLoadItem(String str, @NonNull m<MediaBrowserCompat.MediaItem> mVar) {
        mVar.a(2);
        mVar.b((m<MediaBrowserCompat.MediaItem>) null);
    }

    public void onSearch(@NonNull String str, Bundle bundle, @NonNull m<List<MediaBrowserCompat.MediaItem>> mVar) {
        mVar.a(4);
        mVar.b((m<List<MediaBrowserCompat.MediaItem>>) null);
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void onSubscribe(String str, Bundle bundle) {
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void onUnsubscribe(String str) {
    }

    void performCustomAction(String str, Bundle bundle, f fVar, ResultReceiver resultReceiver) {
        d dVar = new d(this, str, resultReceiver);
        this.mCurConnection = fVar;
        onCustomAction(str, bundle, dVar);
        this.mCurConnection = null;
        if (dVar.b()) {
            return;
        }
        throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
    }

    void performLoadChildren(String str, f fVar, Bundle bundle, Bundle bundle2) {
        a aVar = new a(str, fVar, str, bundle, bundle2);
        this.mCurConnection = fVar;
        if (bundle == null) {
            onLoadChildren(str, aVar);
        } else {
            onLoadChildren(str, aVar, bundle);
        }
        this.mCurConnection = null;
        if (aVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + fVar.f2394a + " id=" + str);
    }

    void performLoadItem(String str, f fVar, ResultReceiver resultReceiver) {
        b bVar = new b(this, str, resultReceiver);
        this.mCurConnection = fVar;
        onLoadItem(str, bVar);
        this.mCurConnection = null;
        if (bVar.b()) {
            return;
        }
        throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str);
    }

    void performSearch(String str, Bundle bundle, f fVar, ResultReceiver resultReceiver) {
        c cVar = new c(this, str, resultReceiver);
        this.mCurConnection = fVar;
        onSearch(str, bundle, cVar);
        this.mCurConnection = null;
        if (cVar.b()) {
            return;
        }
        throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str);
    }

    boolean removeSubscription(String str, f fVar, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                return fVar.f2400g.remove(str) != null;
            }
            List<a.i.m.e<IBinder, Bundle>> list = fVar.f2400g.get(str);
            if (list != null) {
                Iterator<a.i.m.e<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().f363a) {
                        it.remove();
                        z = true;
                    }
                }
                if (list.size() == 0) {
                    fVar.f2400g.remove(str);
                }
            }
            return z;
        } finally {
            this.mCurConnection = fVar;
            onUnsubscribe(str);
            this.mCurConnection = null;
        }
    }

    public void setSessionToken(MediaSessionCompat.Token token) {
        if (token != null) {
            if (this.mSession == null) {
                this.mSession = token;
                this.f2383e.a(token);
                return;
            }
            throw new IllegalStateException("The session token has already been set");
        }
        throw new IllegalArgumentException("Session token may not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public class j extends i {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends m<List<MediaBrowserCompat.MediaItem>> {

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ n f2423f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Bundle f2424g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, n nVar, Bundle bundle) {
                super(obj);
                this.f2423f = nVar;
                this.f2424g = bundle;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.media.MediaBrowserServiceCompat.m
            public void a(List<MediaBrowserCompat.MediaItem> list) {
                if (list == null) {
                    this.f2423f.a((n) null);
                    return;
                }
                if ((a() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.applyOptions(list, this.f2424g);
                }
                ArrayList arrayList = new ArrayList();
                for (MediaBrowserCompat.MediaItem mediaItem : list) {
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    arrayList.add(obtain);
                }
                this.f2423f.a((n) arrayList);
            }
        }

        /* loaded from: classes.dex */
        class b extends i.b {
            b(Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                j jVar = j.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
                jVar.a(str, new n<>(result), bundle);
                MediaBrowserServiceCompat.this.mCurConnection = null;
            }
        }

        j() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.i, androidx.media.MediaBrowserServiceCompat.h, androidx.media.MediaBrowserServiceCompat.g
        public void a() {
            this.f2405b = new b(MediaBrowserServiceCompat.this);
            this.f2405b.onCreate();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.h, androidx.media.MediaBrowserServiceCompat.g
        public Bundle b() {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            f fVar = mediaBrowserServiceCompat.mCurConnection;
            if (fVar != null) {
                if (fVar == mediaBrowserServiceCompat.mConnectionFromFwk) {
                    return this.f2405b.getBrowserRootHints();
                }
                Bundle bundle = fVar.f2398e;
                if (bundle == null) {
                    return null;
                }
                return new Bundle(bundle);
            }
            throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
        }

        @Override // androidx.media.MediaBrowserServiceCompat.h
        void c(String str, Bundle bundle) {
            if (bundle != null) {
                this.f2405b.notifyChildrenChanged(str, bundle);
            } else {
                super.c(str, bundle);
            }
        }

        public void a(String str, n<List<Parcel>> nVar, Bundle bundle) {
            a aVar = new a(str, nVar, bundle);
            MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
            mediaBrowserServiceCompat.mCurConnection = mediaBrowserServiceCompat.mConnectionFromFwk;
            mediaBrowserServiceCompat.onLoadChildren(str, aVar, bundle);
            MediaBrowserServiceCompat.this.mCurConnection = null;
        }
    }

    public void notifyChildrenChanged(@NonNull String str, @NonNull Bundle bundle) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle != null) {
            this.f2383e.a(str, bundle);
            return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public void notifyChildrenChanged(@NonNull androidx.media.c cVar, @NonNull String str, @NonNull Bundle bundle) {
        if (cVar == null) {
            throw new IllegalArgumentException("remoteUserInfo cannot be null in notifyChildrenChanged");
        }
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle != null) {
            this.f2383e.a(cVar, str, bundle);
            return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }

    /* loaded from: classes.dex */
    private static class q implements p {

        /* renamed from: a, reason: collision with root package name */
        final Messenger f2485a;

        q(Messenger messenger) {
            this.f2485a = messenger;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public void a(String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt("extra_service_version", 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putParcelable("data_media_session_token", token);
            bundle2.putBundle("data_root_hints", bundle);
            a(1, bundle2);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public IBinder asBinder() {
            return this.f2485a.getBinder();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public void a() {
            a(2, null);
        }

        @Override // androidx.media.MediaBrowserServiceCompat.p
        public void a(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) {
            Bundle bundle3 = new Bundle();
            bundle3.putString("data_media_item_id", str);
            bundle3.putBundle("data_options", bundle);
            bundle3.putBundle("data_notify_children_changed_options", bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            a(3, bundle3);
        }

        private void a(int i2, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i2;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.f2485a.send(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class n<T> {

        /* renamed from: a, reason: collision with root package name */
        MediaBrowserService.Result f2444a;

        n(MediaBrowserService.Result result) {
            this.f2444a = result;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(T t) {
            if (t instanceof List) {
                this.f2444a.sendResult(a((List<Parcel>) t));
                return;
            }
            if (t instanceof Parcel) {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f2444a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
                return;
            }
            this.f2444a.sendResult(null);
        }

        List<MediaBrowser.MediaItem> a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }
    }
}

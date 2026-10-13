package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.e;
import androidx.media.AudioAttributesCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class MediaControllerCompat {

    /* renamed from: a, reason: collision with root package name */
    private final a f631a;

    /* loaded from: classes.dex */
    public static abstract class Callback implements IBinder.DeathRecipient {

        /* renamed from: a, reason: collision with root package name */
        b f632a;

        /* renamed from: b, reason: collision with root package name */
        IMediaControllerCallback f633b;

        /* loaded from: classes.dex */
        private static class StubCompat extends IMediaControllerCallback.Stub {

            /* renamed from: e, reason: collision with root package name */
            private final WeakReference<Callback> f634e;

            StubCompat(Callback callback) {
                this.f634e = new WeakReference<>(callback);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onCaptioningEnabledChanged(boolean z) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(11, Boolean.valueOf(z), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onEvent(String str, Bundle bundle) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(1, str, bundle);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onExtrasChanged(Bundle bundle) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(7, bundle, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(3, mediaMetadataCompat, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(5, list, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueTitleChanged(CharSequence charSequence) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onRepeatModeChanged(int i2) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(9, Integer.valueOf(i2), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onSessionDestroyed() {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onSessionReady() {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onShuffleModeChanged(int i2) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(12, Integer.valueOf(i2), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onShuffleModeChangedRemoved(boolean z) {
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
                Callback callback = this.f634e.get();
                if (callback != null) {
                    callback.a(4, parcelableVolumeInfo != null ? new c(parcelableVolumeInfo.f670e, parcelableVolumeInfo.f671f, parcelableVolumeInfo.f672g, parcelableVolumeInfo.f673h, parcelableVolumeInfo.f674i) : null, null);
                }
            }
        }

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private static class a extends MediaController.Callback {

            /* renamed from: a, reason: collision with root package name */
            private final WeakReference<Callback> f635a;

            a(Callback callback) {
                this.f635a = new WeakReference<>(callback);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                Callback callback = this.f635a.get();
                if (callback != null) {
                    callback.a(new c(playbackInfo.getPlaybackType(), AudioAttributesCompat.a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
                Callback callback = this.f635a.get();
                if (callback != null) {
                    callback.a(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                Callback callback = this.f635a.get();
                if (callback != null) {
                    callback.a(MediaMetadataCompat.a(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                Callback callback = this.f635a.get();
                if (callback == null || callback.f633b != null) {
                    return;
                }
                callback.a(PlaybackStateCompat.a(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                Callback callback = this.f635a.get();
                if (callback != null) {
                    callback.a(MediaSessionCompat.QueueItem.a((List<?>) list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                Callback callback = this.f635a.get();
                if (callback != null) {
                    callback.a(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                Callback callback = this.f635a.get();
                if (callback != null) {
                    callback.a();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                Callback callback = this.f635a.get();
                if (callback != null) {
                    if (callback.f633b == null || Build.VERSION.SDK_INT >= 23) {
                        callback.a(str, bundle);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class b extends Handler {
        }

        public Callback() {
            if (Build.VERSION.SDK_INT >= 21) {
                new a(this);
            } else {
                this.f633b = new StubCompat(this);
            }
        }

        public void a() {
        }

        void a(int i2, Object obj, Bundle bundle) {
            b bVar = this.f632a;
            if (bVar != null) {
                Message obtainMessage = bVar.obtainMessage(i2, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        public void a(Bundle bundle) {
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void a(c cVar) {
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
        }

        public void a(CharSequence charSequence) {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            a(8, null, null);
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class MediaControllerImplApi21 implements a {

        /* renamed from: a, reason: collision with root package name */
        protected final MediaController f636a;

        /* renamed from: b, reason: collision with root package name */
        final Object f637b = new Object();

        /* renamed from: c, reason: collision with root package name */
        @GuardedBy("mLock")
        private final List<Callback> f638c = new ArrayList();

        /* renamed from: d, reason: collision with root package name */
        private HashMap<Callback, ExtraCallback> f639d = new HashMap<>();

        /* renamed from: e, reason: collision with root package name */
        final MediaSessionCompat.Token f640e;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: e, reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f641e;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f641e = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i2, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f641e.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f637b) {
                    mediaControllerImplApi21.f640e.a(IMediaSession.Stub.asInterface(e.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f640e.a(androidx.versionedparcelable.a.a(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                    mediaControllerImplApi21.a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class ExtraCallback extends Callback.StubCompat {
            ExtraCallback(Callback callback) {
                super(callback);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void onExtrasChanged(Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void onQueueTitleChanged(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void onSessionDestroyed() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f640e = token;
            this.f636a = new MediaController(context, (MediaSession.Token) this.f640e.b());
            if (this.f636a != null) {
                if (this.f640e.a() == null) {
                    b();
                    return;
                }
                return;
            }
            throw new RemoteException();
        }

        private void b() {
            a("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public boolean a(KeyEvent keyEvent) {
            return this.f636a.dispatchMediaButtonEvent(keyEvent);
        }

        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f636a.sendCommand(str, bundle, resultReceiver);
        }

        @GuardedBy("mLock")
        void a() {
            if (this.f640e.a() == null) {
                return;
            }
            for (Callback callback : this.f638c) {
                ExtraCallback extraCallback = new ExtraCallback(callback);
                this.f639d.put(callback, extraCallback);
                callback.f633b = extraCallback;
                try {
                    this.f640e.a().registerCallbackListener(extraCallback);
                    callback.a(13, null, null);
                } catch (RemoteException unused) {
                }
            }
            this.f638c.clear();
        }
    }

    /* loaded from: classes.dex */
    interface a {
        boolean a(KeyEvent keyEvent);
    }

    /* loaded from: classes.dex */
    static class b implements a {

        /* renamed from: a, reason: collision with root package name */
        private IMediaSession f642a;

        public b(MediaSessionCompat.Token token) {
            this.f642a = IMediaSession.Stub.asInterface((IBinder) token.b());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public boolean a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f642a.sendMediaButton(keyEvent);
                    return false;
                } catch (RemoteException unused) {
                    return false;
                }
            }
            throw new IllegalArgumentException("event may not be null.");
        }
    }

    /* loaded from: classes.dex */
    public static final class c {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        c(int r8, int r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                androidx.media.AudioAttributesCompat$a r0 = new androidx.media.AudioAttributesCompat$a
                r0.<init>()
                r0.a(r9)
                androidx.media.AudioAttributesCompat r3 = r0.a()
                r1 = r7
                r2 = r8
                r4 = r10
                r5 = r11
                r6 = r12
                r1.<init>(r2, r3, r4, r5, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaControllerCompat.c.<init>(int, int, int, int, int):void");
        }

        c(int i2, @NonNull AudioAttributesCompat audioAttributesCompat, int i3, int i4, int i5) {
        }
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat.Token token) {
        new ConcurrentHashMap();
        if (token != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f631a = new MediaControllerImplApi21(context, token);
                return;
            } else {
                this.f631a = new b(token);
                return;
            }
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f631a.a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }
}

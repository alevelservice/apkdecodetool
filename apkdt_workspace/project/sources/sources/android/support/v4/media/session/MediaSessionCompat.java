package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.media.AudioManager;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.VolumeProviderCompat;
import androidx.media.c;
import androidx.versionedparcelable.d;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MediaSessionCompat {

    /* renamed from: a, reason: collision with root package name */
    private final MediaControllerCompat f643a;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class MediaSessionImplApi21 implements a {

        /* renamed from: a, reason: collision with root package name */
        final Bundle f644a;

        /* renamed from: b, reason: collision with root package name */
        boolean f645b;

        /* renamed from: c, reason: collision with root package name */
        final RemoteCallbackList<IMediaControllerCallback> f646c;

        /* renamed from: d, reason: collision with root package name */
        PlaybackStateCompat f647d;

        /* renamed from: e, reason: collision with root package name */
        MediaMetadataCompat f648e;

        /* renamed from: f, reason: collision with root package name */
        int f649f;

        /* renamed from: g, reason: collision with root package name */
        boolean f650g;

        /* renamed from: h, reason: collision with root package name */
        int f651h;

        /* renamed from: i, reason: collision with root package name */
        int f652i;

        /* loaded from: classes.dex */
        class ExtraSession extends IMediaSession.Stub {
            ExtraSession() {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int i2, int i3, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                MediaSessionImplApi21 mediaSessionImplApi21 = MediaSessionImplApi21.this;
                return MediaSessionCompat.a(mediaSessionImplApi21.f647d, mediaSessionImplApi21.f648e);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return MediaSessionImplApi21.this.f649f;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                return MediaSessionImplApi21.this.f651h;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getSessionInfo() {
                Bundle bundle = MediaSessionImplApi21.this.f644a;
                if (bundle == null) {
                    return null;
                }
                return new Bundle(bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getShuffleMode() {
                return MediaSessionImplApi21.this.f652i;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return MediaSessionImplApi21.this.f650g;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromMediaId(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromSearch(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromUri(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                if (MediaSessionImplApi21.this.f645b) {
                    return;
                }
                MediaSessionImplApi21.this.f646c.register(iMediaControllerCallback, new c("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItemAt(int i2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean z) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setPlaybackSpeed(float f2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int i2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleMode(int i2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int i2, int i3, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long j2) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21.this.f646c.unregister(iMediaControllerCallback);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class MediaSessionImplBase implements a {

        /* renamed from: a, reason: collision with root package name */
        final String f653a;

        /* renamed from: b, reason: collision with root package name */
        final Bundle f654b;

        /* renamed from: c, reason: collision with root package name */
        final String f655c;

        /* renamed from: d, reason: collision with root package name */
        final AudioManager f656d;

        /* renamed from: e, reason: collision with root package name */
        final Object f657e;

        /* renamed from: f, reason: collision with root package name */
        final RemoteCallbackList<IMediaControllerCallback> f658f;

        /* renamed from: g, reason: collision with root package name */
        boolean f659g;

        /* renamed from: h, reason: collision with root package name */
        int f660h;

        /* renamed from: i, reason: collision with root package name */
        MediaMetadataCompat f661i;

        /* renamed from: j, reason: collision with root package name */
        PlaybackStateCompat f662j;

        /* renamed from: k, reason: collision with root package name */
        PendingIntent f663k;

        /* renamed from: l, reason: collision with root package name */
        List<QueueItem> f664l;
        CharSequence m;
        int n;
        boolean o;
        int p;
        int q;
        Bundle r;
        int s;
        int t;
        VolumeProviderCompat u;

        /* loaded from: classes.dex */
        class MediaSessionStub extends IMediaSession.Stub {
            MediaSessionStub() {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                postToHandler(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
                postToHandler(26, mediaDescriptionCompat, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int i2, int i3, String str) {
                MediaSessionImplBase.this.a(i2, i3);
                throw null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() {
                postToHandler(16);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                Bundle bundle;
                synchronized (MediaSessionImplBase.this.f657e) {
                    bundle = MediaSessionImplBase.this.r;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                long j2;
                synchronized (MediaSessionImplBase.this.f657e) {
                    j2 = MediaSessionImplBase.this.f660h;
                }
                return j2;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                PendingIntent pendingIntent;
                synchronized (MediaSessionImplBase.this.f657e) {
                    pendingIntent = MediaSessionImplBase.this.f663k;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                return MediaSessionImplBase.this.f661i;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                return MediaSessionImplBase.this.f653a;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (MediaSessionImplBase.this.f657e) {
                    playbackStateCompat = MediaSessionImplBase.this.f662j;
                    mediaMetadataCompat = MediaSessionImplBase.this.f661i;
                }
                return MediaSessionCompat.a(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                List<QueueItem> list;
                synchronized (MediaSessionImplBase.this.f657e) {
                    list = MediaSessionImplBase.this.f664l;
                }
                return list;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                return MediaSessionImplBase.this.m;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return MediaSessionImplBase.this.n;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                return MediaSessionImplBase.this.p;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getSessionInfo() {
                Bundle bundle = MediaSessionImplBase.this.f654b;
                if (bundle == null) {
                    return null;
                }
                return new Bundle(bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getShuffleMode() {
                return MediaSessionImplBase.this.q;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                return MediaSessionImplBase.this.f655c;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                int i2;
                int i3;
                int streamMaxVolume;
                int streamVolume;
                int i4;
                synchronized (MediaSessionImplBase.this.f657e) {
                    i2 = MediaSessionImplBase.this.s;
                    i3 = MediaSessionImplBase.this.t;
                    VolumeProviderCompat volumeProviderCompat = MediaSessionImplBase.this.u;
                    if (i2 == 2) {
                        int c2 = volumeProviderCompat.c();
                        int b2 = volumeProviderCompat.b();
                        streamVolume = volumeProviderCompat.a();
                        streamMaxVolume = b2;
                        i4 = c2;
                    } else {
                        streamMaxVolume = MediaSessionImplBase.this.f656d.getStreamMaxVolume(i3);
                        streamVolume = MediaSessionImplBase.this.f656d.getStreamVolume(i3);
                        i4 = 2;
                    }
                }
                return new ParcelableVolumeInfo(i2, i3, i4, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return MediaSessionImplBase.this.o;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                return true;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                postToHandler(14);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                postToHandler(12);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() {
                postToHandler(7);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(String str, Bundle bundle) {
                postToHandler(8, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(String str, Bundle bundle) {
                postToHandler(9, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle bundle) {
                postToHandler(10, uri, bundle);
            }

            void postToHandler(int i2) {
                MediaSessionImplBase.this.a(i2, 0, 0, null, null);
                throw null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() {
                postToHandler(3);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromMediaId(String str, Bundle bundle) {
                postToHandler(4, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromSearch(String str, Bundle bundle) {
                postToHandler(5, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromUri(Uri uri, Bundle bundle) {
                postToHandler(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                postToHandler(15);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(RatingCompat ratingCompat) {
                postToHandler(19, ratingCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) {
                postToHandler(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                if (MediaSessionImplBase.this.f659g) {
                    try {
                        iMediaControllerCallback.onSessionDestroyed();
                    } catch (Exception unused) {
                    }
                } else {
                    MediaSessionImplBase.this.a(Binder.getCallingUid());
                    throw null;
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                postToHandler(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItemAt(int i2) {
                postToHandler(28, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() {
                postToHandler(17);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j2) {
                postToHandler(18, Long.valueOf(j2));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                postToHandler(1, new a(str, bundle, resultReceiverWrapper == null ? null : resultReceiverWrapper.f667e));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(String str, Bundle bundle) {
                postToHandler(20, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent keyEvent) {
                postToHandler(21, keyEvent);
                return true;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean z) {
                postToHandler(29, Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setPlaybackSpeed(float f2) {
                postToHandler(32, Float.valueOf(f2));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int i2) {
                postToHandler(23, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleMode(int i2) {
                postToHandler(30, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int i2, int i3, String str) {
                MediaSessionImplBase.this.b(i2, i3);
                throw null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long j2) {
                postToHandler(11, Long.valueOf(j2));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                postToHandler(13);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplBase.this.f658f.unregister(iMediaControllerCallback);
            }

            void postToHandler(int i2, int i3) {
                MediaSessionImplBase.this.a(i2, i3, 0, null, null);
                throw null;
            }

            void postToHandler(int i2, Object obj) {
                MediaSessionImplBase.this.a(i2, 0, 0, obj, null);
                throw null;
            }

            void postToHandler(int i2, Object obj, int i3) {
                MediaSessionImplBase.this.a(i2, i3, 0, obj, null);
                throw null;
            }

            void postToHandler(int i2, Object obj, Bundle bundle) {
                MediaSessionImplBase.this.a(i2, 0, 0, obj, bundle);
                throw null;
            }
        }

        /* loaded from: classes.dex */
        private static final class a {
            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            }
        }

        String a(int i2) {
            throw null;
        }

        void a(int i2, int i3) {
            throw null;
        }

        void a(int i2, int i3, int i4, Object obj, Bundle bundle) {
            throw null;
        }

        void b(int i2, int i3) {
            throw null;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        ResultReceiver f667e;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<ResultReceiverWrapper> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper[] newArray(int i2) {
                return new ResultReceiverWrapper[i2];
            }
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.f667e = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.f667e.writeToParcel(parcel, i2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface SessionFlags {
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        private final Object f668e;

        /* renamed from: f, reason: collision with root package name */
        private IMediaSession f669f;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<Token> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token createFromParcel(Parcel parcel) {
                Object readStrongBinder;
                if (Build.VERSION.SDK_INT >= 21) {
                    readStrongBinder = parcel.readParcelable(null);
                } else {
                    readStrongBinder = parcel.readStrongBinder();
                }
                return new Token(readStrongBinder);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token[] newArray(int i2) {
                return new Token[i2];
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        public static Token a(Object obj) {
            return a(obj, null);
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(d dVar) {
        }

        public Object b() {
            return this.f668e;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f668e;
            if (obj2 == null) {
                return token.f668e == null;
            }
            Object obj3 = token.f668e;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.f668e;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f668e, i2);
            } else {
                parcel.writeStrongBinder((IBinder) this.f668e);
            }
        }

        Token(Object obj, IMediaSession iMediaSession) {
            this(obj, iMediaSession, null);
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public static Token a(Object obj, IMediaSession iMediaSession) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            if (obj instanceof MediaSession.Token) {
                return new Token(obj, iMediaSession);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        Token(Object obj, IMediaSession iMediaSession, d dVar) {
            this.f668e = obj;
            this.f669f = iMediaSession;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public IMediaSession a() {
            return this.f669f;
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public void a(IMediaSession iMediaSession) {
            this.f669f = iMediaSession;
        }
    }

    /* loaded from: classes.dex */
    interface a {
    }

    public MediaControllerCompat a() {
        return this.f643a;
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    static PlaybackStateCompat a(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long j2 = -1;
        if (playbackStateCompat.c() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.d() != 3 && playbackStateCompat.d() != 4 && playbackStateCompat.d() != 5) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.a() <= 0) {
            return playbackStateCompat;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long b2 = (playbackStateCompat.b() * ((float) (elapsedRealtime - r0))) + playbackStateCompat.c();
        if (mediaMetadataCompat != null && mediaMetadataCompat.a("android.media.metadata.DURATION")) {
            j2 = mediaMetadataCompat.b("android.media.metadata.DURATION");
        }
        long j3 = (j2 < 0 || b2 <= j2) ? b2 < 0 ? 0L : b2 : j2;
        PlaybackStateCompat.b bVar = new PlaybackStateCompat.b(playbackStateCompat);
        bVar.a(playbackStateCompat.d(), j3, playbackStateCompat.b(), elapsedRealtime);
        return bVar.a();
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        private final MediaDescriptionCompat f665e;

        /* renamed from: f, reason: collision with root package name */
        private final long f666f;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<QueueItem> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem[] newArray(int i2) {
                return new QueueItem[i2];
            }
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j2) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j2 != -1) {
                this.f665e = mediaDescriptionCompat;
                this.f666f = j2;
                return;
            }
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }

        public static QueueItem a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
            return new QueueItem(queueItem, MediaDescriptionCompat.a(queueItem.getDescription()), queueItem.getQueueId());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f665e + ", Id=" + this.f666f + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            this.f665e.writeToParcel(parcel, i2);
            parcel.writeLong(this.f666f);
        }

        QueueItem(Parcel parcel) {
            this.f665e = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f666f = parcel.readLong();
        }

        public static List<QueueItem> a(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            return arrayList;
        }
    }
}

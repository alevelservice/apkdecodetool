package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    final int f675e;

    /* renamed from: f, reason: collision with root package name */
    final long f676f;

    /* renamed from: g, reason: collision with root package name */
    final long f677g;

    /* renamed from: h, reason: collision with root package name */
    final float f678h;

    /* renamed from: i, reason: collision with root package name */
    final long f679i;

    /* renamed from: j, reason: collision with root package name */
    final int f680j;

    /* renamed from: k, reason: collision with root package name */
    final CharSequence f681k;

    /* renamed from: l, reason: collision with root package name */
    final long f682l;
    List<CustomAction> m;
    final long n;
    final Bundle o;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Actions {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ErrorCode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface MediaKeyAction {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface RepeatMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ShuffleMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface State {
    }

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<PlaybackStateCompat> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i2) {
            return new PlaybackStateCompat[i2];
        }
    }

    PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, List<CustomAction> list, long j6, Bundle bundle) {
        this.f675e = i2;
        this.f676f = j2;
        this.f677g = j3;
        this.f678h = f2;
        this.f679i = j4;
        this.f680j = i3;
        this.f681k = charSequence;
        this.f682l = j5;
        this.m = new ArrayList(list);
        this.n = j6;
        this.o = bundle;
    }

    public static int a(long j2) {
        if (j2 == 4) {
            return 126;
        }
        if (j2 == 2) {
            return 127;
        }
        if (j2 == 32) {
            return 87;
        }
        if (j2 == 16) {
            return 88;
        }
        if (j2 == 1) {
            return 86;
        }
        if (j2 == 64) {
            return 90;
        }
        if (j2 == 8) {
            return 89;
        }
        return j2 == 512 ? 85 : 0;
    }

    public long a() {
        return this.f682l;
    }

    public float b() {
        return this.f678h;
    }

    public long c() {
        return this.f676f;
    }

    public int d() {
        return this.f675e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f675e + ", position=" + this.f676f + ", buffered position=" + this.f677g + ", speed=" + this.f678h + ", updated=" + this.f682l + ", actions=" + this.f679i + ", error code=" + this.f680j + ", error message=" + this.f681k + ", custom actions=" + this.m + ", active item id=" + this.n + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f675e);
        parcel.writeLong(this.f676f);
        parcel.writeFloat(this.f678h);
        parcel.writeLong(this.f682l);
        parcel.writeLong(this.f677g);
        parcel.writeLong(this.f679i);
        TextUtils.writeToParcel(this.f681k, parcel, i2);
        parcel.writeTypedList(this.m);
        parcel.writeLong(this.n);
        parcel.writeBundle(this.o);
        parcel.writeInt(this.f680j);
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        PlaybackState playbackState = (PlaybackState) obj;
        List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
        if (customActions != null) {
            ArrayList arrayList2 = new ArrayList(customActions.size());
            Iterator<PlaybackState.CustomAction> it = customActions.iterator();
            while (it.hasNext()) {
                arrayList2.add(CustomAction.a(it.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), Build.VERSION.SDK_INT >= 22 ? playbackState.getExtras() : null);
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final List<CustomAction> f687a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private int f688b;

        /* renamed from: c, reason: collision with root package name */
        private long f689c;

        /* renamed from: d, reason: collision with root package name */
        private long f690d;

        /* renamed from: e, reason: collision with root package name */
        private float f691e;

        /* renamed from: f, reason: collision with root package name */
        private long f692f;

        /* renamed from: g, reason: collision with root package name */
        private int f693g;

        /* renamed from: h, reason: collision with root package name */
        private CharSequence f694h;

        /* renamed from: i, reason: collision with root package name */
        private long f695i;

        /* renamed from: j, reason: collision with root package name */
        private long f696j;

        /* renamed from: k, reason: collision with root package name */
        private Bundle f697k;

        public b(PlaybackStateCompat playbackStateCompat) {
            this.f696j = -1L;
            this.f688b = playbackStateCompat.f675e;
            this.f689c = playbackStateCompat.f676f;
            this.f691e = playbackStateCompat.f678h;
            this.f695i = playbackStateCompat.f682l;
            this.f690d = playbackStateCompat.f677g;
            this.f692f = playbackStateCompat.f679i;
            this.f693g = playbackStateCompat.f680j;
            this.f694h = playbackStateCompat.f681k;
            List<CustomAction> list = playbackStateCompat.m;
            if (list != null) {
                this.f687a.addAll(list);
            }
            this.f696j = playbackStateCompat.n;
            this.f697k = playbackStateCompat.o;
        }

        public b a(int i2, long j2, float f2, long j3) {
            this.f688b = i2;
            this.f689c = j2;
            this.f695i = j3;
            this.f691e = f2;
            return this;
        }

        public PlaybackStateCompat a() {
            return new PlaybackStateCompat(this.f688b, this.f689c, this.f690d, this.f691e, this.f692f, this.f693g, this.f694h, this.f695i, this.f687a, this.f696j, this.f697k);
        }
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* renamed from: e, reason: collision with root package name */
        private final String f683e;

        /* renamed from: f, reason: collision with root package name */
        private final CharSequence f684f;

        /* renamed from: g, reason: collision with root package name */
        private final int f685g;

        /* renamed from: h, reason: collision with root package name */
        private final Bundle f686h;

        /* loaded from: classes.dex */
        static class a implements Parcelable.Creator<CustomAction> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i2) {
                return new CustomAction[i2];
            }
        }

        CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.f683e = str;
            this.f684f = charSequence;
            this.f685g = i2;
            this.f686h = bundle;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
            return new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), customAction.getExtras());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f684f) + ", mIcon=" + this.f685g + ", mExtras=" + this.f686h;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f683e);
            TextUtils.writeToParcel(this.f684f, parcel, i2);
            parcel.writeInt(this.f685g);
            parcel.writeBundle(this.f686h);
        }

        CustomAction(Parcel parcel) {
            this.f683e = parcel.readString();
            this.f684f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f685g = parcel.readInt();
            this.f686h = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f675e = parcel.readInt();
        this.f676f = parcel.readLong();
        this.f678h = parcel.readFloat();
        this.f682l = parcel.readLong();
        this.f677g = parcel.readLong();
        this.f679i = parcel.readLong();
        this.f681k = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.m = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.n = parcel.readLong();
        this.o = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f680j = parcel.readInt();
    }
}

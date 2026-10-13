package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    private final String f608e;

    /* renamed from: f, reason: collision with root package name */
    private final CharSequence f609f;

    /* renamed from: g, reason: collision with root package name */
    private final CharSequence f610g;

    /* renamed from: h, reason: collision with root package name */
    private final CharSequence f611h;

    /* renamed from: i, reason: collision with root package name */
    private final Bitmap f612i;

    /* renamed from: j, reason: collision with root package name */
    private final Uri f613j;

    /* renamed from: k, reason: collision with root package name */
    private final Bundle f614k;

    /* renamed from: l, reason: collision with root package name */
    private final Uri f615l;
    private MediaDescription m;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<MediaDescriptionCompat> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            if (Build.VERSION.SDK_INT < 21) {
                return new MediaDescriptionCompat(parcel);
            }
            return MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i2) {
            return new MediaDescriptionCompat[i2];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private String f616a;

        /* renamed from: b, reason: collision with root package name */
        private CharSequence f617b;

        /* renamed from: c, reason: collision with root package name */
        private CharSequence f618c;

        /* renamed from: d, reason: collision with root package name */
        private CharSequence f619d;

        /* renamed from: e, reason: collision with root package name */
        private Bitmap f620e;

        /* renamed from: f, reason: collision with root package name */
        private Uri f621f;

        /* renamed from: g, reason: collision with root package name */
        private Bundle f622g;

        /* renamed from: h, reason: collision with root package name */
        private Uri f623h;

        public b a(@Nullable String str) {
            this.f616a = str;
            return this;
        }

        public b b(@Nullable CharSequence charSequence) {
            this.f618c = charSequence;
            return this;
        }

        public b c(@Nullable CharSequence charSequence) {
            this.f617b = charSequence;
            return this;
        }

        public b a(@Nullable CharSequence charSequence) {
            this.f619d = charSequence;
            return this;
        }

        public b b(@Nullable Uri uri) {
            this.f623h = uri;
            return this;
        }

        public b a(@Nullable Bitmap bitmap) {
            this.f620e = bitmap;
            return this;
        }

        public b a(@Nullable Uri uri) {
            this.f621f = uri;
            return this;
        }

        public b a(@Nullable Bundle bundle) {
            this.f622g = bundle;
            return this;
        }

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f616a, this.f617b, this.f618c, this.f619d, this.f620e, this.f621f, this.f622g, this.f623h);
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f608e = str;
        this.f609f = charSequence;
        this.f610g = charSequence2;
        this.f611h = charSequence3;
        this.f612i = bitmap;
        this.f613j = uri;
        this.f614k = bundle;
        this.f615l = uri2;
    }

    public Object a() {
        if (this.m == null && Build.VERSION.SDK_INT >= 21) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f608e);
            builder.setTitle(this.f609f);
            builder.setSubtitle(this.f610g);
            builder.setDescription(this.f611h);
            builder.setIconBitmap(this.f612i);
            builder.setIconUri(this.f613j);
            Bundle bundle = this.f614k;
            if (Build.VERSION.SDK_INT < 23 && this.f615l != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                    bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f615l);
            }
            builder.setExtras(bundle);
            if (Build.VERSION.SDK_INT >= 23) {
                builder.setMediaUri(this.f615l);
            }
            this.m = builder.build();
            return this.m;
        }
        return this.m;
    }

    @Nullable
    public String b() {
        return this.f608e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f609f) + ", " + ((Object) this.f610g) + ", " + ((Object) this.f611h);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f608e);
            TextUtils.writeToParcel(this.f609f, parcel, i2);
            TextUtils.writeToParcel(this.f610g, parcel, i2);
            TextUtils.writeToParcel(this.f611h, parcel, i2);
            parcel.writeParcelable(this.f612i, i2);
            parcel.writeParcelable(this.f613j, i2);
            parcel.writeBundle(this.f614k);
            parcel.writeParcelable(this.f615l, i2);
            return;
        }
        ((MediaDescription) a()).writeToParcel(parcel, i2);
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f608e = parcel.readString();
        this.f609f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f610g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f611h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f612i = (Bitmap) parcel.readParcelable(classLoader);
        this.f613j = (Uri) parcel.readParcelable(classLoader);
        this.f614k = parcel.readBundle(classLoader);
        this.f615l = (Uri) parcel.readParcelable(classLoader);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaDescriptionCompat a(java.lang.Object r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L82
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 21
            if (r1 < r2) goto L82
            android.support.v4.media.MediaDescriptionCompat$b r1 = new android.support.v4.media.MediaDescriptionCompat$b
            r1.<init>()
            android.media.MediaDescription r8 = (android.media.MediaDescription) r8
            java.lang.String r2 = r8.getMediaId()
            r1.a(r2)
            java.lang.CharSequence r2 = r8.getTitle()
            r1.c(r2)
            java.lang.CharSequence r2 = r8.getSubtitle()
            r1.b(r2)
            java.lang.CharSequence r2 = r8.getDescription()
            r1.a(r2)
            android.graphics.Bitmap r2 = r8.getIconBitmap()
            r1.a(r2)
            android.net.Uri r2 = r8.getIconUri()
            r1.a(r2)
            android.os.Bundle r2 = r8.getExtras()
            java.lang.String r3 = "android.support.v4.media.description.MEDIA_URI"
            if (r2 == 0) goto L4c
            android.support.v4.media.session.MediaSessionCompat.a(r2)
            android.os.Parcelable r4 = r2.getParcelable(r3)
            android.net.Uri r4 = (android.net.Uri) r4
            goto L4d
        L4c:
            r4 = r0
        L4d:
            if (r4 == 0) goto L65
            java.lang.String r5 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r6 = r2.containsKey(r5)
            if (r6 == 0) goto L5f
            int r6 = r2.size()
            r7 = 2
            if (r6 != r7) goto L5f
            goto L66
        L5f:
            r2.remove(r3)
            r2.remove(r5)
        L65:
            r0 = r2
        L66:
            r1.a(r0)
            if (r4 == 0) goto L6f
            r1.b(r4)
            goto L7c
        L6f:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 23
            if (r0 < r2) goto L7c
            android.net.Uri r0 = r8.getMediaUri()
            r1.b(r0)
        L7c:
            android.support.v4.media.MediaDescriptionCompat r0 = r1.a()
            r0.m = r8
        L82:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }
}

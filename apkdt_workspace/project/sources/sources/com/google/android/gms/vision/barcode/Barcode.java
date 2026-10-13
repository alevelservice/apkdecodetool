package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "BarcodeCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class Barcode extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Barcode> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public int f13479e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public String f13480f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public String f13481g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public int f13482h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public Point[] f13483i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public Email f13484j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public Phone f13485k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public Sms f13486l;

    @SafeParcelable.Field(id = 10)
    public WiFi m;

    @SafeParcelable.Field(id = 11)
    public UrlBookmark n;

    @SafeParcelable.Field(id = 12)
    public GeoPoint o;

    @SafeParcelable.Field(id = 13)
    public CalendarEvent p;

    @SafeParcelable.Field(id = 14)
    public ContactInfo q;

    @SafeParcelable.Field(id = 15)
    public DriverLicense r;

    @SafeParcelable.Field(id = 16)
    public byte[] s;

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "AddressCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class Address extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Address> CREATOR = new b();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public int f13487e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String[] f13488f;

        public Address() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13487e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13488f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public Address(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String[] strArr) {
            this.f13487e = i2;
            this.f13488f = strArr;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "CalendarDateTimeCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class CalendarDateTime extends AbstractSafeParcelable {
        public static final Parcelable.Creator<CalendarDateTime> CREATOR = new e();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public int f13489e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public int f13490f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public int f13491g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(id = 5)
        public int f13492h;

        /* renamed from: i, reason: collision with root package name */
        @SafeParcelable.Field(id = 6)
        public int f13493i;

        /* renamed from: j, reason: collision with root package name */
        @SafeParcelable.Field(id = 7)
        public int f13494j;

        /* renamed from: k, reason: collision with root package name */
        @SafeParcelable.Field(id = 8)
        public boolean f13495k;

        /* renamed from: l, reason: collision with root package name */
        @SafeParcelable.Field(id = 9)
        public String f13496l;

        public CalendarDateTime() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13489e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13490f);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13491g);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13492h);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13493i);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13494j);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13495k);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f13496l, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public CalendarDateTime(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) int i5, @SafeParcelable.Param(id = 6) int i6, @SafeParcelable.Param(id = 7) int i7, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str) {
            this.f13489e = i2;
            this.f13490f = i3;
            this.f13491g = i4;
            this.f13492h = i5;
            this.f13493i = i6;
            this.f13494j = i7;
            this.f13495k = z;
            this.f13496l = str;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "CalendarEventCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class CalendarEvent extends AbstractSafeParcelable {
        public static final Parcelable.Creator<CalendarEvent> CREATOR = new g();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public String f13497e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13498f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public String f13499g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(id = 5)
        public String f13500h;

        /* renamed from: i, reason: collision with root package name */
        @SafeParcelable.Field(id = 6)
        public String f13501i;

        /* renamed from: j, reason: collision with root package name */
        @SafeParcelable.Field(id = 7)
        public CalendarDateTime f13502j;

        /* renamed from: k, reason: collision with root package name */
        @SafeParcelable.Field(id = 8)
        public CalendarDateTime f13503k;

        public CalendarEvent() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13497e, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13498f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13499g, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13500h, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13501i, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, (Parcelable) this.f13502j, i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable) this.f13503k, i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public CalendarEvent(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) CalendarDateTime calendarDateTime, @SafeParcelable.Param(id = 8) CalendarDateTime calendarDateTime2) {
            this.f13497e = str;
            this.f13498f = str2;
            this.f13499g = str3;
            this.f13500h = str4;
            this.f13501i = str5;
            this.f13502j = calendarDateTime;
            this.f13503k = calendarDateTime2;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "ContactInfoCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class ContactInfo extends AbstractSafeParcelable {
        public static final Parcelable.Creator<ContactInfo> CREATOR = new f();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public PersonName f13504e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13505f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public String f13506g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(id = 5)
        public Phone[] f13507h;

        /* renamed from: i, reason: collision with root package name */
        @SafeParcelable.Field(id = 6)
        public Email[] f13508i;

        /* renamed from: j, reason: collision with root package name */
        @SafeParcelable.Field(id = 7)
        public String[] f13509j;

        /* renamed from: k, reason: collision with root package name */
        @SafeParcelable.Field(id = 8)
        public Address[] f13510k;

        public ContactInfo() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f13504e, i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13505f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13506g, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable[]) this.f13507h, i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable[]) this.f13508i, i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13509j, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable[]) this.f13510k, i2, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public ContactInfo(@SafeParcelable.Param(id = 2) PersonName personName, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) Phone[] phoneArr, @SafeParcelable.Param(id = 6) Email[] emailArr, @SafeParcelable.Param(id = 7) String[] strArr, @SafeParcelable.Param(id = 8) Address[] addressArr) {
            this.f13504e = personName;
            this.f13505f = str;
            this.f13506g = str2;
            this.f13507h = phoneArr;
            this.f13508i = emailArr;
            this.f13509j = strArr;
            this.f13510k = addressArr;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "DriverLicenseCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class DriverLicense extends AbstractSafeParcelable {
        public static final Parcelable.Creator<DriverLicense> CREATOR = new i();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public String f13511e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13512f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public String f13513g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(id = 5)
        public String f13514h;

        /* renamed from: i, reason: collision with root package name */
        @SafeParcelable.Field(id = 6)
        public String f13515i;

        /* renamed from: j, reason: collision with root package name */
        @SafeParcelable.Field(id = 7)
        public String f13516j;

        /* renamed from: k, reason: collision with root package name */
        @SafeParcelable.Field(id = 8)
        public String f13517k;

        /* renamed from: l, reason: collision with root package name */
        @SafeParcelable.Field(id = 9)
        public String f13518l;

        @SafeParcelable.Field(id = 10)
        public String m;

        @SafeParcelable.Field(id = 11)
        public String n;

        @SafeParcelable.Field(id = 12)
        public String o;

        @SafeParcelable.Field(id = 13)
        public String p;

        @SafeParcelable.Field(id = 14)
        public String q;

        @SafeParcelable.Field(id = 15)
        public String r;

        public DriverLicense() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13511e, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13512f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13513g, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13514h, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13515i, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13516j, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13517k, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f13518l, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.m, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.n, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.o, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.p, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.q, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.r, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public DriverLicense(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6, @SafeParcelable.Param(id = 8) String str7, @SafeParcelable.Param(id = 9) String str8, @SafeParcelable.Param(id = 10) String str9, @SafeParcelable.Param(id = 11) String str10, @SafeParcelable.Param(id = 12) String str11, @SafeParcelable.Param(id = 13) String str12, @SafeParcelable.Param(id = 14) String str13, @SafeParcelable.Param(id = 15) String str14) {
            this.f13511e = str;
            this.f13512f = str2;
            this.f13513g = str3;
            this.f13514h = str4;
            this.f13515i = str5;
            this.f13516j = str6;
            this.f13517k = str7;
            this.f13518l = str8;
            this.m = str9;
            this.n = str10;
            this.o = str11;
            this.p = str12;
            this.q = str13;
            this.r = str14;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "EmailCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class Email extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Email> CREATOR = new h();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public int f13519e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13520f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public String f13521g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(id = 5)
        public String f13522h;

        public Email() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13519e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13520f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13521g, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13522h, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public Email(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3) {
            this.f13519e = i2;
            this.f13520f = str;
            this.f13521g = str2;
            this.f13522h = str3;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "GeoPointCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class GeoPoint extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GeoPoint> CREATOR = new k();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public double f13523e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public double f13524f;

        public GeoPoint() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13523e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13524f);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public GeoPoint(@SafeParcelable.Param(id = 2) double d2, @SafeParcelable.Param(id = 3) double d3) {
            this.f13523e = d2;
            this.f13524f = d3;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "PersonNameCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class PersonName extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PersonName> CREATOR = new j();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public String f13525e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13526f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public String f13527g;

        /* renamed from: h, reason: collision with root package name */
        @SafeParcelable.Field(id = 5)
        public String f13528h;

        /* renamed from: i, reason: collision with root package name */
        @SafeParcelable.Field(id = 6)
        public String f13529i;

        /* renamed from: j, reason: collision with root package name */
        @SafeParcelable.Field(id = 7)
        public String f13530j;

        /* renamed from: k, reason: collision with root package name */
        @SafeParcelable.Field(id = 8)
        public String f13531k;

        public PersonName() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13525e, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13526f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13527g, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13528h, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13529i, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13530j, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13531k, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public PersonName(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6, @SafeParcelable.Param(id = 8) String str7) {
            this.f13525e = str;
            this.f13526f = str2;
            this.f13527g = str3;
            this.f13528h = str4;
            this.f13529i = str5;
            this.f13530j = str6;
            this.f13531k = str7;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "PhoneCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class Phone extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Phone> CREATOR = new m();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public int f13532e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13533f;

        public Phone() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13532e);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13533f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public Phone(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str) {
            this.f13532e = i2;
            this.f13533f = str;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "SmsCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class Sms extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Sms> CREATOR = new l();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public String f13534e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13535f;

        public Sms() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13534e, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13535f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public Sms(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2) {
            this.f13534e = str;
            this.f13535f = str2;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "UrlBookmarkCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class UrlBookmark extends AbstractSafeParcelable {
        public static final Parcelable.Creator<UrlBookmark> CREATOR = new o();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public String f13536e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13537f;

        public UrlBookmark() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13536e, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13537f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public UrlBookmark(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2) {
            this.f13536e = str;
            this.f13537f = str2;
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    @SafeParcelable.Class(creator = "WiFiCreator")
    @SafeParcelable.Reserved({1})
    /* loaded from: classes.dex */
    public static class WiFi extends AbstractSafeParcelable {
        public static final Parcelable.Creator<WiFi> CREATOR = new n();

        /* renamed from: e, reason: collision with root package name */
        @SafeParcelable.Field(id = 2)
        public String f13538e;

        /* renamed from: f, reason: collision with root package name */
        @SafeParcelable.Field(id = 3)
        public String f13539f;

        /* renamed from: g, reason: collision with root package name */
        @SafeParcelable.Field(id = 4)
        public int f13540g;

        public WiFi() {
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13538e, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13539f, false);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13540g);
            com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        }

        @SafeParcelable.Constructor
        public WiFi(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) int i2) {
            this.f13538e = str;
            this.f13539f = str2;
            this.f13540g = i2;
        }
    }

    public Barcode() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13479e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13480f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13481g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13482h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable[]) this.f13483i, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, (Parcelable) this.f13484j, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable) this.f13485k, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable) this.f13486l, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable) this.m, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable) this.n, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, (Parcelable) this.o, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, (Parcelable) this.p, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, (Parcelable) this.q, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, (Parcelable) this.r, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.s, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public Barcode(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) Point[] pointArr, @SafeParcelable.Param(id = 7) Email email, @SafeParcelable.Param(id = 8) Phone phone, @SafeParcelable.Param(id = 9) Sms sms, @SafeParcelable.Param(id = 10) WiFi wiFi, @SafeParcelable.Param(id = 11) UrlBookmark urlBookmark, @SafeParcelable.Param(id = 12) GeoPoint geoPoint, @SafeParcelable.Param(id = 13) CalendarEvent calendarEvent, @SafeParcelable.Param(id = 14) ContactInfo contactInfo, @SafeParcelable.Param(id = 15) DriverLicense driverLicense, @SafeParcelable.Param(id = 16) byte[] bArr) {
        this.f13479e = i2;
        this.f13480f = str;
        this.s = bArr;
        this.f13481g = str2;
        this.f13482h = i3;
        this.f13483i = pointArr;
        this.f13484j = email;
        this.f13485k = phone;
        this.f13486l = sms;
        this.m = wiFi;
        this.n = urlBookmark;
        this.o = geoPoint;
        this.p = calendarEvent;
        this.q = contactInfo;
        this.r = driverLicense;
    }
}

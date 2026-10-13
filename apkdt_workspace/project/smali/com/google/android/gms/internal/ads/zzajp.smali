.class public abstract Lcom/google/android/gms/internal/ads/zzajp;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 4
    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzajq;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzrv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 12
    :pswitch_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzqk()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 15
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzru()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 21
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 24
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 27
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getOverrideClickHandling()Z

    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 30
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getOverrideImpressionRecording()Z

    move-result p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 33
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 34
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 36
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    :pswitch_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->recordImpression()V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    :pswitch_d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getPrice()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getStore()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getStarRating()D

    move-result-wide p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 50
    :pswitch_10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->zzqj()Lcom/google/android/gms/internal/ads/zzaas;

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/tg1;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 56
    :pswitch_12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getImages()Ljava/util/List;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :pswitch_14
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzajq;->getHeadline()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

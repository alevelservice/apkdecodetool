.class public abstract Lcom/google/android/gms/internal/measurement/zzn;
.super Lcom/google/android/gms/internal/measurement/zza;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zza;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzk;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzk;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzk;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzm;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const-string v1, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const-string v2, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_1

    .line 4
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_0
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getDeepLink(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 7
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_3

    .line 10
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_1

    .line 11
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 12
    :goto_1
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 13
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 14
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzk;->setDataCollectionEnabled(Z)V

    goto/16 :goto_14

    .line 15
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 17
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_5

    .line 18
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_2

    .line 19
    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 20
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21
    invoke-interface {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzk;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzp;I)V

    goto/16 :goto_14

    .line 22
    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->b(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzk;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_14

    .line 24
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 25
    :cond_6
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 26
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzq;

    if-eqz v2, :cond_7

    .line 27
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzq;

    goto :goto_3

    .line 28
    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Landroid/os/IBinder;)V

    .line 29
    :goto_3
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzq;)V

    goto/16 :goto_14

    .line 30
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 32
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzq;

    if-eqz v2, :cond_9

    .line 33
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzq;

    goto :goto_4

    .line 34
    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_4
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzq;)V

    goto/16 :goto_14

    .line 36
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 38
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzq;

    if-eqz v2, :cond_b

    .line 39
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzq;

    goto :goto_5

    .line 40
    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Landroid/os/IBinder;)V

    .line 41
    :goto_5
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzq;)V

    goto/16 :goto_14

    .line 42
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    move-object v0, p0

    .line 47
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzk;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_14

    .line 48
    :pswitch_9
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_6

    .line 50
    :cond_c
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 51
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_d

    .line 52
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_6

    .line 53
    :cond_d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 54
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzk;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzp;J)V

    goto/16 :goto_14

    .line 56
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_7

    .line 58
    :cond_e
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 59
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_f

    .line 60
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_7

    .line 61
    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 62
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 63
    invoke-interface {p0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzk;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzp;J)V

    goto/16 :goto_14

    .line 64
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 66
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityResumed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 67
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 69
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityPaused(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 70
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 72
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityDestroyed(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 73
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 74
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 76
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityCreated(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/os/Bundle;J)V

    goto/16 :goto_14

    .line 77
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 79
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityStopped(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 80
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 82
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->onActivityStarted(Lcom/google/android/gms/dynamic/IObjectWrapper;J)V

    goto/16 :goto_14

    .line 83
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 85
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 86
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 88
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 89
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_8

    .line 90
    :cond_10
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 91
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_11

    .line 92
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_8

    .line 93
    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 94
    :goto_8
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->generateEventId(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 95
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_9

    .line 96
    :cond_12
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 97
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_13

    .line 98
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_9

    .line 99
    :cond_13
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 100
    :goto_9
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getGmpAppId(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 101
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_a

    .line 102
    :cond_14
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 103
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_15

    .line 104
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_a

    .line 105
    :cond_15
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 106
    :goto_a
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 107
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_b

    .line 108
    :cond_16
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 109
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_17

    .line 110
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_b

    .line 111
    :cond_17
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 112
    :goto_b
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 113
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_c

    :cond_18
    const-string v1, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 114
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 115
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzv;

    if-eqz v2, :cond_19

    .line 116
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzv;

    goto :goto_c

    .line 117
    :cond_19
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzu;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>(Landroid/os/IBinder;)V

    .line 118
    :goto_c
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/zzv;)V

    goto/16 :goto_14

    .line 119
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_d

    .line 120
    :cond_1a
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 121
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_1b

    .line 122
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_d

    .line 123
    :cond_1b
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 124
    :goto_d
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 125
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_e

    .line 126
    :cond_1c
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 127
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v2, :cond_1d

    .line 128
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_e

    .line 129
    :cond_1d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 130
    :goto_e
    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 131
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 135
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzk;->setCurrentScreen(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 136
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 137
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzk;->setSessionTimeoutDuration(J)V

    goto/16 :goto_14

    .line 138
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 139
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzk;->setMinimumSessionDuration(J)V

    goto/16 :goto_14

    .line 140
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 141
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzk;->resetAnalyticsData(J)V

    goto/16 :goto_14

    .line 142
    :pswitch_1e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_14

    .line 145
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_f

    .line 148
    :cond_1e
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 149
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_1f

    .line 150
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_f

    .line 151
    :cond_1f
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 152
    :goto_f
    invoke-interface {p0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 153
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 155
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 156
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzk;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_14

    .line 157
    :pswitch_21
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 159
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_14

    .line 160
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 162
    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzk;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_14

    .line 163
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_10

    .line 165
    :cond_20
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 166
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_21

    .line 167
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_10

    .line 168
    :cond_21
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 169
    :goto_10
    invoke-interface {p0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 170
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;)Z

    move-result v5

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_11

    .line 174
    :cond_22
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 175
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_23

    .line 176
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_11

    .line 177
    :cond_23
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    .line 178
    :goto_11
    invoke-interface {p0, v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzk;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzp;)V

    goto/16 :goto_14

    .line 179
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;)Z

    move-result v4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    .line 184
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzk;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V

    goto/16 :goto_14

    .line 185
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 187
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_24

    move-object v6, v3

    goto :goto_13

    .line 189
    :cond_24
    invoke-interface {v6, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 190
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzp;

    if-eqz v3, :cond_25

    .line 191
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzp;

    goto :goto_12

    .line 192
    :cond_25
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzr;-><init>(Landroid/os/IBinder;)V

    :goto_12
    move-object v6, v2

    .line 193
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v8

    .line 194
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzk;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzp;J)V

    goto :goto_14

    .line 195
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 198
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;)Z

    move-result v4

    .line 199
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;)Z

    move-result v5

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    .line 201
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzk;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_14

    .line 202
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/d2;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzx;

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 205
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzk;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzx;J)V

    .line 206
    :goto_14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

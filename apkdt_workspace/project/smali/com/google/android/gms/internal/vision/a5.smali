.class public final Lcom/google/android/gms/internal/vision/a5;
.super Lcom/google/android/gms/internal/vision/i8;
.source "com.google.android.gms:play-services-vision@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/i8<",
        "Lcom/google/android/gms/internal/vision/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/gms/internal/vision/zzf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzf;)V
    .locals 2

    const-string v0, "BarcodeNativeHandle"

    const-string v1, "barcode"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/vision/i8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/a5;->k:Lcom/google/android/gms/internal/vision/zzf;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i8;->b()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const-string v0, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    .line 8
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/zzi;

    if-eqz v2, :cond_1

    .line 10
    move-object p1, v1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzi;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/vision/zzk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/vision/zzk;-><init>(Landroid/os/IBinder;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 12
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/a5;->k:Lcom/google/android/gms/internal/vision/zzf;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/vision/zzf;)Lcom/google/android/gms/internal/vision/zzg;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/zzp;)[Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i8;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i8;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzg;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzg;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/vision/zzp;)[Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1
.end method

.method public final a(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/zzp;)[Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i8;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/i8;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzg;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/vision/zzp;)[Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p1
.end method

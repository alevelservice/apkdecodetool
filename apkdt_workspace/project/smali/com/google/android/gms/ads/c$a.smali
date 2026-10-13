.class public Lcom/google/android/gms/ads/c$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzux;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzux;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/c$a;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->b()Lcom/google/android/gms/internal/ads/eu1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaje;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaje;-><init>()V

    .line 3
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/eu1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajd;)Lcom/google/android/gms/internal/ads/zzux;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/c$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzux;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzux;->zzb(Lcom/google/android/gms/internal/ads/zzur;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set AdListener."

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaai;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaai;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzux;->zza(Lcom/google/android/gms/internal/ads/zzaai;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/google/android/gms/ads/formats/c$a;)Lcom/google/android/gms/ads/c$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacv;-><init>(Lcom/google/android/gms/ads/formats/c$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzux;->zza(Lcom/google/android/gms/internal/ads/zzabs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add app install ad listener"

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/c$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacy;-><init>(Lcom/google/android/gms/ads/formats/d$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzux;->zza(Lcom/google/android/gms/internal/ads/zzabt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add content ad listener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/google/android/gms/ads/formats/h$b;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzadb;-><init>(Lcom/google/android/gms/ads/formats/h$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzux;->zza(Lcom/google/android/gms/internal/ads/zzacf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/ads/formats/e$b;Lcom/google/android/gms/ads/formats/e$a;)Lcom/google/android/gms/ads/c$a;
    .locals 2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzada;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzada;-><init>(Lcom/google/android/gms/ads/formats/e$b;)V

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Lcom/google/android/gms/ads/formats/e$a;)V

    .line 9
    :goto_0
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzux;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzaby;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    .line 10
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method

.method public a()Lcom/google/android/gms/ads/c;
    .locals 3

    .line 15
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/c$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/c$a;->b:Lcom/google/android/gms/internal/ads/zzux;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzux;->zzon()Lcom/google/android/gms/internal/ads/zzuw;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

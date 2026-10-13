.class public Lcom/google/android/gms/ads/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzuw;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuw;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zt1;->a:Lcom/google/android/gms/internal/ads/zt1;

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuw;Lcom/google/android/gms/internal/ads/zt1;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuw;Lcom/google/android/gms/internal/ads/zt1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/c;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/ads/c;->b:Lcom/google/android/gms/internal/ads/zzuw;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/su1;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/c;->b:Lcom/google/android/gms/internal/ads/zzuw;

    iget-object v1, p0, Lcom/google/android/gms/ads/c;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zt1;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/su1;)Lcom/google/android/gms/internal/ads/zztp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzuw;->zzb(Lcom/google/android/gms/internal/ads/zztp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/internal/ads/su1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/internal/ads/su1;)V

    return-void
.end method

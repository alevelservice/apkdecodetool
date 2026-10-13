.class final Lcom/google/android/gms/ads/internal/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/t11;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic e:Lcom/google/android/gms/ads/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/ads/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/ads/internal/zzj;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzj;->zzc(Lcom/google/android/gms/ads/internal/zzj;)Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/ads/internal/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzj;->zzd(Lcom/google/android/gms/ads/internal/zzj;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/q21;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/t11;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/t11;-><init>(Lcom/google/android/gms/internal/ads/cz0;)V

    return-object v1
.end method

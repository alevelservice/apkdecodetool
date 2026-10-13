.class public final Lcom/google/android/gms/internal/ads/vj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qy0<",
        "Lcom/google/android/gms/internal/ads/zzaok;",
        "Lcom/google/android/gms/internal/ads/ak0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/google/android/gms/internal/ads/db0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/db0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj0;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vj0;->b:Lcom/google/android/gms/internal/ads/db0;

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaok;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vj0;->b:Lcom/google/android/gms/internal/ads/db0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/db0;->a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/yj0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/yj0;-><init>(Lcom/google/android/gms/internal/ads/zzaok;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vj0;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qy0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

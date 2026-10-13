.class final synthetic Lcom/google/android/gms/internal/ads/zp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/aq0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp0;->e:Lcom/google/android/gms/internal/ads/aq0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp0;->e:Lcom/google/android/gms/internal/ads/aq0;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/xp0;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aq0;->a:Lcom/google/android/gms/internal/ads/mv1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aq0;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/mv1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/xp0;-><init>(Ljava/util/List;)V

    return-object v1
.end method

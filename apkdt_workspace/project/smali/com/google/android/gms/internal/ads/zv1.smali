.class final synthetic Lcom/google/android/gms/internal/ads/zv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/wv1;

.field private final f:Lcom/google/android/gms/internal/ads/pv1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wv1;Lcom/google/android/gms/internal/ads/pv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zv1;->e:Lcom/google/android/gms/internal/ads/wv1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zv1;->f:Lcom/google/android/gms/internal/ads/pv1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zv1;->e:Lcom/google/android/gms/internal/ads/wv1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zv1;->f:Lcom/google/android/gms/internal/ads/pv1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wv1;->b(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

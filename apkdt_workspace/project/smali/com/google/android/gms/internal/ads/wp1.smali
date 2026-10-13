.class final Lcom/google/android/gms/internal/ads/wp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/fj1;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/qp1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qp1;Lcom/google/android/gms/internal/ads/fj1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wp1;->f:Lcom/google/android/gms/internal/ads/qp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wp1;->e:Lcom/google/android/gms/internal/ads/fj1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wp1;->e:Lcom/google/android/gms/internal/ads/fj1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fj1;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wp1;->f:Lcom/google/android/gms/internal/ads/qp1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qp1;->a(Lcom/google/android/gms/internal/ads/qp1;)Lcom/google/android/gms/internal/ads/np1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wp1;->e:Lcom/google/android/gms/internal/ads/fj1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/np1;->b(Lcom/google/android/gms/internal/ads/fj1;)V

    return-void
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/q3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/n3;

.field private final f:Lcom/google/android/gms/internal/ads/h2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/n3;Lcom/google/android/gms/internal/ads/h2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q3;->e:Lcom/google/android/gms/internal/ads/n3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q3;->f:Lcom/google/android/gms/internal/ads/h2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q3;->e:Lcom/google/android/gms/internal/ads/n3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q3;->f:Lcom/google/android/gms/internal/ads/h2;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/n3;->a:Lcom/google/android/gms/internal/ads/m3;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m3;->a(Lcom/google/android/gms/internal/ads/m3;)Lcom/google/android/gms/internal/ads/dc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dc;->b(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/h2;->destroy()V

    return-void
.end method

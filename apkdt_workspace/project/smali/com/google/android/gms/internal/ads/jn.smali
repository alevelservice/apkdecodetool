.class final synthetic Lcom/google/android/gms/internal/ads/jn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/kn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jn;->e:Lcom/google/android/gms/internal/ads/kn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jn;->e:Lcom/google/android/gms/internal/ads/kn;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kn;->a:Lcom/google/android/gms/internal/ads/hn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hn;->b(Lcom/google/android/gms/internal/ads/hn;)Lcom/google/android/gms/internal/ads/qn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qn;->c()V

    return-void
.end method

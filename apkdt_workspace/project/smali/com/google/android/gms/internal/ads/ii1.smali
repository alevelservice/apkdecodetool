.class final Lcom/google/android/gms/internal/ads/ii1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:Lcom/google/android/gms/internal/ads/ci1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ci1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ii1;->f:Lcom/google/android/gms/internal/ads/ci1;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ii1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii1;->f:Lcom/google/android/gms/internal/ads/ci1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci1;->a(Lcom/google/android/gms/internal/ads/ci1;)Lcom/google/android/gms/internal/ads/di1;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ii1;->e:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/di1;->a(I)V

    return-void
.end method

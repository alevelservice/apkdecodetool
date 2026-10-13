.class final Lcom/google/android/gms/internal/ads/cm1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/io/IOException;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/yl1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yl1;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cm1;->f:Lcom/google/android/gms/internal/ads/yl1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cm1;->e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cm1;->f:Lcom/google/android/gms/internal/ads/yl1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yl1;->e(Lcom/google/android/gms/internal/ads/yl1;)Lcom/google/android/gms/internal/ads/jm1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cm1;->e:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jm1;->a(Ljava/io/IOException;)V

    return-void
.end method

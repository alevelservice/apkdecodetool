.class final Lcom/google/android/gms/internal/ads/uz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/lang/Runnable;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/vz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vz0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz0;->f:Lcom/google/android/gms/internal/ads/vz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uz0;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz0;->f:Lcom/google/android/gms/internal/ads/vz0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/vz0;->e:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz0;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

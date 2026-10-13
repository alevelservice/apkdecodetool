.class final synthetic Lcom/google/android/gms/internal/ads/bq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zp;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zp;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bq;->e:Lcom/google/android/gms/internal/ads/zp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bq;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bq;->e:Lcom/google/android/gms/internal/ads/zp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bq;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

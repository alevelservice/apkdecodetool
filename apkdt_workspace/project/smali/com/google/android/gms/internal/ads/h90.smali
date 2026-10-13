.class final synthetic Lcom/google/android/gms/internal/ads/h90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/e90;

.field private final f:Lcom/google/android/gms/internal/ads/zzafe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e90;Lcom/google/android/gms/internal/ads/zzafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h90;->e:Lcom/google/android/gms/internal/ads/e90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h90;->f:Lcom/google/android/gms/internal/ads/zzafe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h90;->e:Lcom/google/android/gms/internal/ads/e90;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h90;->f:Lcom/google/android/gms/internal/ads/zzafe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e90;->b(Lcom/google/android/gms/internal/ads/zzafe;)V

    return-void
.end method

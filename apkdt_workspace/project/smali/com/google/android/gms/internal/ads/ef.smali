.class final synthetic Lcom/google/android/gms/internal/ads/ef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzayc;

.field private final f:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->e:Lcom/google/android/gms/internal/ads/zzayc;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ef;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->e:Lcom/google/android/gms/internal/ads/zzayc;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ef;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayc;->zzan(Z)V

    return-void
.end method

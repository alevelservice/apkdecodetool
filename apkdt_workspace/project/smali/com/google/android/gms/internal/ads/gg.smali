.class final synthetic Lcom/google/android/gms/internal/ads/gg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzayw;

.field private final f:Z

.field private final g:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayw;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg;->e:Lcom/google/android/gms/internal/ads/zzayw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/gg;->f:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/gg;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->e:Lcom/google/android/gms/internal/ads/zzayw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/gg;->f:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/gg;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayw;->zzc(ZJ)V

    return-void
.end method

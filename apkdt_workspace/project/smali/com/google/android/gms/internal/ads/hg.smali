.class final synthetic Lcom/google/android/gms/internal/ads/hg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzayw;

.field private final f:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hg;->e:Lcom/google/android/gms/internal/ads/zzayw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/hg;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hg;->e:Lcom/google/android/gms/internal/ads/zzayw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/hg;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzcz(I)V

    return-void
.end method

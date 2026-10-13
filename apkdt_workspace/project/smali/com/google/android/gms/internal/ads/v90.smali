.class final synthetic Lcom/google/android/gms/internal/ads/v90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/s90;

.field private final f:Lcom/google/android/gms/internal/ads/zzaok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s90;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v90;->e:Lcom/google/android/gms/internal/ads/s90;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v90;->f:Lcom/google/android/gms/internal/ads/zzaok;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v90;->e:Lcom/google/android/gms/internal/ads/s90;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v90;->f:Lcom/google/android/gms/internal/ads/zzaok;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s90;->b(Lcom/google/android/gms/internal/ads/zzaok;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/ff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzaya;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaya;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ff;->e:Lcom/google/android/gms/internal/ads/zzaya;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzaya;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ff;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ff;-><init>(Lcom/google/android/gms/internal/ads/zzaya;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ff;->e:Lcom/google/android/gms/internal/ads/zzaya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaya;->stop()V

    return-void
.end method

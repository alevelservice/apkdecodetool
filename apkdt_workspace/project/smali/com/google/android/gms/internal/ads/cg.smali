.class final synthetic Lcom/google/android/gms/internal/ads/cg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzayw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cg;->e:Lcom/google/android/gms/internal/ads/zzayw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cg;->e:Lcom/google/android/gms/internal/ads/zzayw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzyf()V

    return-void
.end method

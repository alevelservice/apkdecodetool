.class final synthetic Lcom/google/android/gms/internal/ads/dv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzxl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dv1;->e:Lcom/google/android/gms/internal/ads/zzxl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dv1;->e:Lcom/google/android/gms/internal/ads/zzxl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxl;->zzpf()V

    return-void
.end method

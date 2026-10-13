.class final synthetic Lcom/google/android/gms/internal/ads/fr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/hz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fr;->e:Lcom/google/android/gms/internal/ads/hz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fr;->e:Lcom/google/android/gms/internal/ads/hz0;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/t90;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/t90;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/hz0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

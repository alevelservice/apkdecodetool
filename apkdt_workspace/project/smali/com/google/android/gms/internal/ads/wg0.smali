.class final synthetic Lcom/google/android/gms/internal/ads/wg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/u60;

.field private final b:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u60;Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg0;->a:Lcom/google/android/gms/internal/ads/u60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wg0;->b:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wg0;->a:Lcom/google/android/gms/internal/ads/u60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg0;->b:Lcom/google/android/gms/internal/ads/fi;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u60;->a()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzys()V

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyy()Lcom/google/android/gms/internal/ads/oj;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/oj;->g()V

    return-void
.end method

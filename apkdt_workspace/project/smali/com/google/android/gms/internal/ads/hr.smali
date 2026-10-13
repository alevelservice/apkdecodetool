.class final synthetic Lcom/google/android/gms/internal/ads/hr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cr;

.field private final b:Lcom/google/android/gms/internal/ads/hz0;

.field private final c:Lcom/google/android/gms/internal/ads/qz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cr;Lcom/google/android/gms/internal/ads/hz0;Lcom/google/android/gms/internal/ads/qz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/cr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/hz0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/cr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hr;->b:Lcom/google/android/gms/internal/ads/hz0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hr;->c:Lcom/google/android/gms/internal/ads/qz0;

    check-cast p1, Lcom/google/android/gms/internal/ads/sq;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/internal/ads/hz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/sq;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/r4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/o4;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/o4;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r4;->a:Lcom/google/android/gms/internal/ads/o4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r4;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r4;->a:Lcom/google/android/gms/internal/ads/o4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/r4;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/p3;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/o4;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/p3;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

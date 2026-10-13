.class final synthetic Lcom/google/android/gms/internal/ads/fd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gd0;

.field private final b:Lcom/google/android/gms/internal/ads/vs0;

.field private final c:Lcom/google/android/gms/internal/ads/ns0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gd0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fd0;->a:Lcom/google/android/gms/internal/ads/gd0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fd0;->b:Lcom/google/android/gms/internal/ads/vs0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fd0;->c:Lcom/google/android/gms/internal/ads/ns0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fd0;->a:Lcom/google/android/gms/internal/ads/gd0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fd0;->b:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fd0;->c:Lcom/google/android/gms/internal/ads/ns0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/gd0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

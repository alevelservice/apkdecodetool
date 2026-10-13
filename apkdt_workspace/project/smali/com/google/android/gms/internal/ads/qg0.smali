.class final synthetic Lcom/google/android/gms/internal/ads/qg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rg0;

.field private final b:Lcom/google/android/gms/internal/ads/ns0;

.field private final c:Lcom/google/android/gms/internal/ads/u60;

.field private final d:Lcom/google/android/gms/internal/ads/vs0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rg0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/u60;Lcom/google/android/gms/internal/ads/vs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qg0;->a:Lcom/google/android/gms/internal/ads/rg0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qg0;->b:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qg0;->c:Lcom/google/android/gms/internal/ads/u60;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qg0;->d:Lcom/google/android/gms/internal/ads/vs0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qg0;->a:Lcom/google/android/gms/internal/ads/rg0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qg0;->b:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qg0;->c:Lcom/google/android/gms/internal/ads/u60;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qg0;->d:Lcom/google/android/gms/internal/ads/vs0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/rg0;->a(Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/u60;Lcom/google/android/gms/internal/ads/vs0;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/kh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fu0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ih0;

.field private final b:Lcom/google/android/gms/internal/ads/vs0;

.field private final c:Lcom/google/android/gms/internal/ads/ns0;

.field private final d:Lcom/google/android/gms/internal/ads/bd0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ih0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kh0;->a:Lcom/google/android/gms/internal/ads/ih0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kh0;->b:Lcom/google/android/gms/internal/ads/vs0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kh0;->c:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/kh0;->d:Lcom/google/android/gms/internal/ads/bd0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kh0;->a:Lcom/google/android/gms/internal/ads/ih0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kh0;->b:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kh0;->c:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/kh0;->d:Lcom/google/android/gms/internal/ads/bd0;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/ih0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

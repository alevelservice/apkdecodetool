.class final synthetic Lcom/google/android/gms/internal/ads/qg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zn1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mg;

.field private final b:Lcom/google/android/gms/internal/ads/zn1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mg;Lcom/google/android/gms/internal/ads/zn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qg;->a:Lcom/google/android/gms/internal/ads/mg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/internal/ads/zn1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wn1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qg;->a:Lcom/google/android/gms/internal/ads/mg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/internal/ads/zn1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mg;->a(Lcom/google/android/gms/internal/ads/zn1;)Lcom/google/android/gms/internal/ads/wn1;

    move-result-object v0

    return-object v0
.end method
